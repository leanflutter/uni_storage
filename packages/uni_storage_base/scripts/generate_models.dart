// ignore_for_file: avoid_print

import 'dart:io';

import 'package:html/dom.dart' show Element;
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:recase/recase.dart';

String _getFileName(String n) {
  return n.snakeCase
      .replaceAll('c_o_r_s', 'cors')
      .replaceAll('j_s_o_n', 'json')
      .replaceAll('c_s_v', 'csv');
}

void main() async {
  final urls = await getAllModelUrls();
  final models = await Future.wait(urls.map(getModel));

  String exports = '';
  for (ModelSpec model in models) {
    final file = File('lib/src/models/${_getFileName(model.name)}.dart');
    await file.writeAsString(model.toDart().replaceAll('null?', 'dynamic'));
    exports +=
        "export 'src/models/${_getFileName(model.name)}.dart';\n";
  }
  File('lib/models.dart').writeAsString(exports);
}
const baseUrl = 'https://docs.aws.amazon.com/AmazonS3/latest/API';

Future<List<String>> getAllModelUrls() async {
  print('Getting Index.');
  const url = '$baseUrl/API_Types_Amazon_Simple_Storage_Service.html';
  final page = await http.get(Uri.parse(url));
  final document = parse(page.body);
  final urls = document.querySelectorAll('.listitem a');
  return urls
      .map<String>((a) => a.attributes['href']!.substring(2))
      .map((a) => '$baseUrl/$a')
      .toList();
}

Future<ModelSpec> getModel(String url) async {
  print('Getting: $url.');
  late String pageBody;

  File file = File('build/${url.split('/').last}');
  if (file.existsSync()) {
    pageBody = file.readAsStringSync();
  } else {
    final page = await http.get(Uri.parse(url));
    file.writeAsStringSync(page.body);
    pageBody = page.body;
  }

  final document = parse(pageBody);

  final name = document.querySelector('h1')!.text;
  final description = document
      .querySelector('#main-col-body p')!
      .text
      .replaceAll(RegExp(r'\s+'), ' ');

  final fields = <FieldSpec>[];
  for (var dt in document.querySelectorAll('dt')) {
    final name = dt.text.trim();
    final spec = parseField(name, dt.nextElementSibling!);
    fields.add(spec);
  }
  return ModelSpec(
    name: name,
    description: description,
    fields: fields,
  );
}

class ModelSpec {
  ModelSpec({
    required this.name,
    this.description,
    required this.fields,
  });

  final String name;
  final String? description;
  final List<FieldSpec> fields;

  @override
  String toString() {
    return '<Model $name>';
  }

  String toDart() {
    final buffer = StringBuffer();
    List<FieldSpec> importsList = fields.where((e) {
      return (e.type.isObject ||
          e.type.isArray && e.type.name.snakeCase != 'string');
    }).toList()
      ..sort((a, b) => a.type.name.compareTo(b.type.name));

    for (FieldSpec field in importsList) {
      buffer.writeln(
        'import \'package:uni_storage_base/src/models/${_getFileName(field.type.name)}.dart\';',
      );
    }
    if (importsList.isNotEmpty) {
      buffer.writeln();
    }
    if (description != null) {
      buffer.writeln('/// $description');
    }
    buffer.writeln('class $name {');
    if (fields.isNotEmpty) {
      buffer.writeln('  $name({');
      for (FieldSpec field in fields) {
        buffer.writeln(
          '  ${field.isRequired ? 'required' : ''}  this.${field.dartName},',
        );
      }
      buffer.writeln('  });');
    } else {
      buffer.writeln('  $name();');
    }
    buffer.writeln();
    for (FieldSpec field in fields) {
      buffer.writeln(
        '  final ${field.type.dartName}${field.nullable} ${field.dartName};',
      );
    }
    buffer.writeln('}');
    return buffer.toString();
  }
}

class FieldSpec {
  FieldSpec({
    required this.name,
    required this.dartName,
    this.source,
    this.description,
    this.isRequired = false,
    required this.type,
  });

  final String name;
  final String dartName;
  final String? source;
  final String? description;
  final bool isRequired;
  final TypeSpec type;

  String get nullable => isRequired ? '' : '?';

  @override
  String toString() {
    return '<Field $name>';
  }
}

class TypeSpec {
  TypeSpec({
    required this.name,
    this.dartName,
    this.isObject = false,
    this.isArray = false,
  });

  final String name;
  final String? dartName;
  final bool isObject;
  final bool isArray;

  @override
  String toString() {
    return '<TypeSpec $name>';
  }
}

String toCamelCase(String name) {
  return name.substring(0, 1).toLowerCase() + name.substring(1);
}

FieldSpec parseField(String name, Element dd) {
  final source = dd.text;
  final description =
      dd.querySelector('p')!.text.replaceAll(RegExp(r'\s+'), ' ');
  final isRequired = dd.text.contains('Required: Yes');
  final type = parseType(source);

  return FieldSpec(
    name: name,
    dartName: toCamelCase(name),
    source: source,
    description: description,
    isRequired: isRequired,
    type: type,
  );
}

TypeSpec parseType(String source) {
  if (source.contains('Type: Base64-encoded binary data object')) {
    return TypeSpec(name: 'String');
  }

  const typeMap = {
    'Integer': 'int',
    'Long': 'int',
    'String': 'String',
    'strings': 'String',
    'Timestamp': 'DateTime',
    'Boolean': 'bool',
  };
  final pattern = RegExp(r'Type: (Array of |)(\w+)( data type|)');
  final match = pattern.firstMatch(source)!;

  final isArray = match.group(1)!.trim().isNotEmpty;
  final isObject = match.group(3)!.trim().isNotEmpty;
  final type = match.group(2);

  final dartType = isObject ? type : typeMap[type!];
  final dartName = isArray ? 'List<$dartType>' : dartType;

  return TypeSpec(
    name: dartType!,
    dartName: dartName,
    isObject: isObject,
    isArray: isArray,
  );
}
