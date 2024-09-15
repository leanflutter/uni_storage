/// A container for describing a condition that must be met for the specified
/// redirect to apply. For example, 1. If request is for pages in the /docs
/// folder, redirect to the /documents folder. 2. If request results in HTTP
/// error 4xx, redirect request to another host where you might process the
/// error.
class Condition {
  Condition({
    this.httpErrorCodeReturnedEquals,
    this.keyPrefixEquals,
  });

  /// The HTTP error code when the redirect is applied. In the event of an
  /// error, if the error code equals this value, then the specified redirect is
  /// applied. Required when parent element Condition is specified and sibling
  /// KeyPrefixEquals is not specified. If both are specified, then both must be
  /// true for the redirect to be applied.
  final String? httpErrorCodeReturnedEquals;

  /// The object key name prefix when the redirect is applied. For example, to
  /// redirect requests for ExamplePage.html, the key prefix will be
  /// ExamplePage.html. To redirect request for all pages with the prefix docs/,
  /// the key prefix will be /docs, which identifies all objects in the docs/
  /// folder. Required when the parent element Condition is specified and
  /// sibling HttpErrorCodeReturnedEquals is not specified. If both conditions
  /// are specified, both must be true for the redirect to be applied.
  final String? keyPrefixEquals;
}
