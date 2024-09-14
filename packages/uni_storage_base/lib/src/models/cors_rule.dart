/// Specifies a cross-origin access rule for an Amazon S3 bucket.
class CORSRule {
  CORSRule({
  required  this.allowedMethods,
  required  this.allowedOrigins,
    this.allowedHeaders,
    this.exposeHeaders,
    this.iD,
    this.maxAgeSeconds,
  });

  final List<String> allowedMethods;
  final List<String> allowedOrigins;
  final List<String>? allowedHeaders;
  final List<String>? exposeHeaders;
  final String? iD;
  final int? maxAgeSeconds;
}
