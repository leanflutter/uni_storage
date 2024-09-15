/// Specifies a cross-origin access rule for an Amazon S3 bucket.
class CORSRule {
  CORSRule({
    required this.allowedMethods,
    required this.allowedOrigins,
    this.allowedHeaders,
    this.exposeHeaders,
    this.id,
    this.maxAgeSeconds,
  });

  /// An HTTP method that you allow the origin to execute. Valid values are GET,
  /// PUT, HEAD, POST, and DELETE.
  final List<String> allowedMethods;

  /// One or more origins you want customers to be able to access the bucket
  /// from.
  final List<String> allowedOrigins;

  /// Headers that are specified in the Access-Control-Request-Headers header.
  /// These headers are allowed in a preflight OPTIONS request. In response to
  /// any preflight OPTIONS request, Amazon S3 returns any requested headers
  /// that are allowed.
  final List<String>? allowedHeaders;

  /// One or more headers in the response that you want customers to be able to
  /// access from their applications (for example, from a JavaScript
  /// XMLHttpRequest object).
  final List<String>? exposeHeaders;

  /// Unique identifier for the rule. The value cannot be longer than 255
  /// characters.
  final String? id;

  /// The time in seconds that your browser is to cache the preflight response
  /// for the specified resource.
  final int? maxAgeSeconds;
}
