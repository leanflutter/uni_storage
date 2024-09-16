import 'package:html/dom.dart' show Element;
import 's3_variable.dart';

class S3Operation {
  S3Operation({
    required this.name,
    required this.description,
    this.uriRequestParameters = const [],
    this.responseElements = const [],
  });

  factory S3Operation.fromHtmlElement(Element element) {
    final name = element.querySelector('h1')!.text.trim();
    final description = element
        .querySelector('#main-col-body p')!
        .text
        .replaceAll(RegExp(r'\s+'), ' ');

    final variablelistElements = element.querySelectorAll('.variablelist');

    final uriRequestParameters = <S3Variable>[];
    final responseElements = <S3Variable>[];
    for (var variablelistElement in variablelistElements) {
      final previousElementText =
          variablelistElement.previousElementSibling?.text ?? '';
      if (previousElementText ==
          'The request uses the following URI parameters.') {
        for (var dt in variablelistElement.querySelectorAll('dt')) {
          uriRequestParameters.add(S3Variable.fromHtmlElement(dt));
        }
      }
      if (previousElementText ==
          'The following data is returned in XML format by the service.') {
        for (var dt in variablelistElement.querySelectorAll('dt')) {
          responseElements.add(S3Variable.fromHtmlElement(dt));
        }
      }
    }

    return S3Operation(
      name: name,
      description: description,
      uriRequestParameters: uriRequestParameters,
      responseElements: responseElements,
    );
  }

  final String name;
  final String description;
  final List<S3Variable> uriRequestParameters;
  final List<S3Variable> responseElements;
}
