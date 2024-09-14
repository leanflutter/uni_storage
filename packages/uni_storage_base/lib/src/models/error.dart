/// Container for all error elements.
class Error {
  Error({
    this.code,
    this.key,
    this.message,
    this.versionId,
  });

  final String? code;
  final String? key;
  final String? message;
  final String? versionId;
}
