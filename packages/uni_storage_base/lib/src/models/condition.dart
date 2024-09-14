/// A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the /docs folder, redirect to the /documents folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
class Condition {
  Condition({
    this.httpErrorCodeReturnedEquals,
    this.keyPrefixEquals,
  });

  final String? httpErrorCodeReturnedEquals;
  final String? keyPrefixEquals;
}
