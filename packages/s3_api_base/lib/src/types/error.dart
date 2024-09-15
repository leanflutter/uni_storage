/// Container for all error elements.
class Error {
  Error({
    this.code,
    this.key,
    this.message,
    this.versionId,
  });

  /// The error code is a string that uniquely identifies an error condition. It
  /// is meant to be read and understood by programs that detect and handle
  /// errors by type. The following is a list of Amazon S3 error codes. For more
  /// information, see Error responses.
  final String? code;

  /// The error key.
  final String? key;

  /// The error message contains a generic description of the error condition in
  /// English. It is intended for a human audience. Simple programs display the
  /// message directly to the end user if they encounter an error condition they
  /// don't know how or don't care to handle. Sophisticated programs with more
  /// exhaustive error handling and proper internationalization are more likely
  /// to ignore the error message.
  final String? message;

  /// The version ID of the error.
  final String? versionId;
}
