import 'package:html/dom.dart' show Element;
import 's3_variable.dart';

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
    final fields = <S3Variable>[];
    for (var dt in element.querySelectorAll('dt')) {
      fields.add(S3Variable.fromHtmlElement(dt));
    }
    return S3Type(
      name: name,
      description: description,
      fields: fields,
    );
  }

  final String name;
  final String description;
  final List<S3Variable> fields;
}
