// ignore_for_file: avoid_print

import 'dart:io';

import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:recase/recase.dart';

import 's3_operation.dart';
import 's3_type.dart';
import 's3_variable.dart';

const _kDartTypes = {
  'Integer': 'int',
  'Long': 'int',
  'String': 'String',
  'strings': 'String',
  'Timestamp': 'DateTime',
  'Boolean': 'bool',
};

final _generatedTypes = [];

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

extension on S3Type {
  String get dartName => name;

  List<String> get dartImportTypes {
    return fields
        .where((e) {
          return !_kDartTypes.values.contains(e.dartType) &&
              e.dartType != 'dynamic' &&
              e.dartType != 'List<String>';
        })
        .map((e) => e.dartType.replaceAll('List<', '').replaceAll('>', ''))
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

extension on S3Variable {
  /// Gets the Dart name of this field.
  String get dartName => name.camelCase;

  /// Gets the Dart type of this field.
  String get dartType {
    if (this.type == null) {
      return 'dynamic';
    }
    if (this.type!.contains('Type: Base64-encoded binary data object')) {
      return 'String';
    }

    final match =
        RegExp(r'Type: (Array of |)(\w+)( data type|)').firstMatch(this.type!)!;
    final type = match.group(2);
    final isArray = match.group(1)!.trim().isNotEmpty;
    final isObject = match.group(3)!.trim().isNotEmpty;

    String resolvedDartType = _kDartTypes[type] ?? type ?? 'dynamic';
    if (isArray) {
      resolvedDartType = 'List<$resolvedDartType>';
    } else if (isObject) {
      resolvedDartType = type ?? 'dynamic';
    }
    return resolvedDartType;
  }
}

extension on S3Operation {
  String toDartClass() {
    final buffer = StringBuffer();
    S3Variable? rootTag;
    String? resultClassName;
    if (responseElements.isNotEmpty) {
      rootTag = responseElements.first;
      resultClassName = rootTag.name.pascalCase;
      if (name.endsWith('V2')) {
        resultClassName = '${resultClassName}V2';
      }
      if (!_generatedTypes.contains(rootTag.name)) {
        final fields = responseElements
            .where((e) => !e.description.contains('Root level tag'))
            .toList();

        List<String> dartImportTypes = fields
            .where((e) {
              return !_kDartTypes.values.contains(e.dartType) &&
                  e.dartType != 'dynamic' &&
                  e.dartType != 'List<String>';
            })
            .map((e) => e.dartType.replaceAll('List<', '').replaceAll('>', ''))
            .toList()
          ..sort((a, b) => a.compareTo(b));
        if (dartImportTypes.isNotEmpty) {
          for (final importType in dartImportTypes) {
            buffer.writeln(
              'import \'package:s3_api_base/src/types/${_toDartFileName(importType)}.dart\';',
            );
          }
          buffer.writeln();
        }

        // Add a doc comment.
        if (rootTag.description.isNotEmpty) {
          buffer.writeln(_toDartDocComment(rootTag.description));
        }
        // Add the class definition.
        buffer.writeln('class $resultClassName {');
        if (fields.isNotEmpty) {
          // Add a constructor.
          buffer.writeln('  $resultClassName({');
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
            buffer.writeln(
              '  final ${field.dartType}$nullable ${field.dartName};',
            );
          }
        }
        buffer.writeln('}');
        buffer.writeln();
      } else {
        buffer.writeln(
          'import \'package:s3_api_base/src/types/${_toDartFileName(rootTag.name)}.dart\';',
        );
        buffer.writeln();
      }
    }

    // Add a doc comment.
    if (description.isNotEmpty) {
      buffer.writeln(_toDartDocComment(description));
    }
    buffer.writeln('abstract mixin class ${name}Operation {');
    if (uriRequestParameters.isNotEmpty) {
      buffer.writeln(
        '  Future<${resultClassName ?? 'void'}> ${name.camelCase}({',
      );
      int i = 0;
      for (var param in uriRequestParameters) {
        String type = param.dartType == 'dynamic' ? 'String' : param.dartType;
        String name = param.name.replaceAll('x-amz-', '').camelCase;
        String nullable = param.required ? '' : '?';
        if (i++ != 0) {
          buffer.writeln();
        }
        buffer.writeln(_toDartDocComment(param.description, indent: 4));
        buffer.writeln('    $type$nullable $name,');
      }
      buffer.writeln('  });');
    } else {
      buffer.writeln('  Future<dynamic> ${name.camelCase}();');
    }
    buffer.writeln('}');
    return buffer.toString();
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
    _generatedTypes.add(s3Type.name);
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

/// Returns a list of URLs to the API operations.
Future<List<String>> _getApiOperationsUrls() async {
  const baseUrl = 'https://docs.aws.amazon.com/AmazonS3/latest/API';
  const url = '$baseUrl/API_Operations_Amazon_Simple_Storage_Service.html';
  final html = await _getHtml(url);
  final document = parse(html);
  final urls = document.querySelectorAll('.listitem a');
  return urls
      .map<String>((a) => a.attributes['href']!.substring(2))
      .map((a) => '$baseUrl/$a')
      .toList();
}

Future<void> _genApiOperations() async {
  final urls = await _getApiOperationsUrls();

  List<String> imports = [];
  List<String> withs = [];
  for (final url in urls) {
    print('Parsing $url');
    final String html = await _getHtml(url);
    final s3Operation = S3Operation.fromHtmlElement(parse(html).body!);
    final file =
        File('lib/src/operations/${_toDartFileName(s3Operation.name)}.dart');
    await file.writeAsString(s3Operation.toDartClass());
    imports.add(
      'export \'package:s3_api_base/src/operations/${_toDartFileName(s3Operation.name)}.dart\';',
    );
    withs.add('${s3Operation.name}Operation');
  }
  imports.sort((a, b) => a.compareTo(b));
  withs.sort((a, b) => a.compareTo(b));
  print(imports.join('\n'));
  print(withs.join(',\n'));
  File('lib/s3_operations.dart').writeAsString('${imports.join('\n')}\n');
}

Future<void> main() async {
  await _genS3ApiTypes();
  await _genApiOperations();
}
