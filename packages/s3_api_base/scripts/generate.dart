// ignore_for_file: avoid_print

import 'dart:io';

import 'package:html/dom.dart' show Element;
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:recase/recase.dart';

const _kDartTypes = {
  'Integer': 'int',
  'Long': 'int',
  'String': 'String',
  'strings': 'String',
  'Timestamp': 'DateTime',
  'Boolean': 'bool',
};

/// Converts a description to a Dart doc comment.
String _toDartDocComment(String description, {int indent = 0}) {
  final delimiterWithIndent = '${' ' * indent}///';
  final buffer = StringBuffer();
  final lines = description.split('\n');
  for (final line in lines) {
    if (line.isEmpty) {
      buffer.writeln(delimiterWithIndent);
    } else {
      final words = line.split(' ');
      final lineBuffer = StringBuffer(delimiterWithIndent);
      for (final word in words) {
        if (lineBuffer.length + word.length + 1 > 80) {
          buffer.writeln(lineBuffer);
          lineBuffer.clear();
          lineBuffer.write('$delimiterWithIndent $word');
        } else {
          lineBuffer.write(' $word');
        }
      }
      buffer.writeln(lineBuffer);
    }
  }
  return buffer.toString().trimRight();
}

String _toDartFileName(String name) {
  return name.snakeCase
      .replaceAll('c_o_r_s', 'cors')
      .replaceAll('c_s_v', 'csv')
      .replaceAll('j_s_o_n', 'json');
}

class S3Type {
  S3Type({
    required this.name,
    required this.description,
    required this.fields,
  });

  factory S3Type.fromHtmlElement(Element element) {
    final name = element.querySelector('h1')!.text;
    final description = element
        .querySelector('#main-col-body p')!
        .text
        .replaceAll(RegExp(r'\s+'), ' ');
    final fields = <S3TypeField>[];
    for (var dt in element.querySelectorAll('dt')) {
      fields.add(S3TypeField.fromHtmlElement(dt));
    }
    return S3Type(
      name: name,
      description: description,
      fields: fields,
    );
  }

  final String name;
  final String description;
  final List<S3TypeField> fields;

  String get dartName => name;

  List<String> get dartImportTypes {
    return fields
        .where((e) {
          return !_kDartTypes.values.contains(e.dartType) &&
              e.dartType != 'dynamic' &&
              e.dartType != 'List<String>';
        })
        .map((e) => e.dartType)
        .toList()
      ..sort((a, b) => a.compareTo(b));
  }

  /// Converts this S3Type to a Dart class.
  String toDartClass() {
    final buffer = StringBuffer();
    // Add the import statement.
    if (dartImportTypes.isNotEmpty) {
      for (final importType in dartImportTypes) {
        buffer.writeln(
          'import \'package:s3_api_base/src/types/${_toDartFileName(importType)}.dart\';',
        );
      }
      buffer.writeln();
    }

    // Add a doc comment.
    if (description.isNotEmpty) {
      buffer.writeln(_toDartDocComment(description));
    }
    // Add the class definition.
    buffer.writeln('class $dartName {');
    if (fields.isNotEmpty) {
      // Add a constructor.
      buffer.writeln('  $dartName({');
      for (final field in fields) {
        final requiredStr = field.required ? 'required ' : '';
        buffer.writeln('    ${requiredStr}this.${field.dartName},');
      }
      buffer.writeln('  });');
      // Add fields.
      for (final field in fields) {
        buffer.writeln();
        if (field.description.isNotEmpty) {
          buffer.writeln(_toDartDocComment(field.description, indent: 2));
        }
        final nullable = field.required ? '' : '?';
        buffer.writeln('  final ${field.dartType}$nullable ${field.dartName};');
      }
    }
    buffer.writeln('}');
    return buffer.toString();
  }
}

class S3TypeField {
  const S3TypeField({
    required this.name,
    required this.description,
    required this.type,
    required this.required,
  });

  factory S3TypeField.fromHtmlElement(Element element) {
    final dd = element.nextElementSibling!;
    final name = element.text.trim();
    final description =
        dd.querySelector('p')!.text.replaceAll(RegExp(r'\s+'), ' ');
    final type = dd
        .querySelectorAll('p')
        .firstWhere((e) => e.text.contains('Type:'))
        .text;
    final isRequired = dd.text.contains('Required: Yes');
    return S3TypeField(
      name: name,
      description: description,
      type: type,
      required: isRequired,
    );
  }

  final String name;
  final String description;
  final String type;
  final bool required;

  /// Gets the Dart name of this field.
  String get dartName => name.camelCase;

  /// Gets the Dart type of this field.
  String get dartType {
    if (this.type.contains('Type: Base64-encoded binary data object')) {
      return 'String';
    }

    final match =
        RegExp(r'Type: (Array of |)(\w+)( data type|)').firstMatch(this.type)!;
    final type = match.group(2);
    final isArray = match.group(1)!.trim().isNotEmpty;
    final isObject = match.group(3)!.trim().isNotEmpty;

    String resolvedDartType = _kDartTypes[type] ?? type ?? 'dynamic';
    if (isArray) {
      resolvedDartType = 'List<$resolvedDartType>';
    }
    if (isObject) resolvedDartType = type ?? 'dynamic';
    return resolvedDartType;
  }
}

Future<String> _getHtml(String url) async {
  final cachedFile = File('build/.cache/${url.split('/').last}');
  if (cachedFile.existsSync()) {
    return cachedFile.readAsStringSync();
  } else {
    final page = await http.get(Uri.parse(url));
    if (!cachedFile.parent.existsSync()) {
      cachedFile.parent.createSync(recursive: true);
    }
    cachedFile.writeAsStringSync(page.body);
    return page.body;
  }
}

/// Returns a list of URLs to the API types.
Future<List<String>> _getApiTypeUrls() async {
  const baseUrl = 'https://docs.aws.amazon.com/AmazonS3/latest/API';
  const url = '$baseUrl/API_Types_Amazon_Simple_Storage_Service.html';
  final html = await _getHtml(url);
  final document = parse(html);
  final urls = document.querySelectorAll('.listitem a');
  return urls
      .map<String>((a) => a.attributes['href']!.substring(2))
      .map((a) => '$baseUrl/$a')
      .toList();
}

Future<void> _genS3ApiTypes() async {
  List<S3Type> s3Types = [];
  final urls = await _getApiTypeUrls();

  for (final url in urls) {
    print('Parsing $url');
    final String html = await _getHtml(url);
    final s3Type = S3Type.fromHtmlElement(parse(html).body!);
    final file = File('lib/src/types/${_toDartFileName(s3Type.name)}.dart');
    await file.writeAsString(s3Type.toDartClass());
    s3Types.add(s3Type);
  }
  s3Types.sort(
    (a, b) => _toDartFileName(a.dartName).compareTo(
      _toDartFileName(b.dartName),
    ),
  );
  StringBuffer buffer = StringBuffer();
  for (final s3Type in s3Types) {
    buffer.writeln(
      'export \'src/types/${_toDartFileName(s3Type.name)}.dart\';',
    );
  }
  File('lib/s3_types.dart').writeAsString(buffer.toString());
}

Future<void> _genApiOperations() async {}

Future<void> main() async {
  await _genS3ApiTypes();
  await _genApiOperations();
}
