/// Specifies JSON as request's output serialization format.
class JSONOutput {
  JSONOutput({
    this.recordDelimiter,
  });

  /// The value used to separate individual records in the output. If no value
  /// is specified, Amazon S3 uses a newline character ('\n').
  final String? recordDelimiter;
}
