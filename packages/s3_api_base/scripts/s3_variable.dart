import 'package:collection/collection.dart';
import 'package:html/dom.dart' show Element;

class S3Variable {
  const S3Variable({
    required this.name,
    required this.description,
    this.type,
    required this.required,
  });

  factory S3Variable.fromHtmlElement(Element element) {
    final dd = element.nextElementSibling!;
    final name = element.text.trim();
    final description =
        dd.querySelector('p')!.text.replaceAll(RegExp(r'\s+'), ' ');
    final type = dd
        .querySelectorAll('p')
        .firstWhereOrNull((e) => e.text.contains('Type:'))
        ?.text;
    final isRequired = dd.text.contains('Required: Yes');
    return S3Variable(
      name: name,
      description: description,
      type: type,
      required: isRequired,
    );
  }

  final String name;
  final String description;
  final String? type;
  final bool required;
}
