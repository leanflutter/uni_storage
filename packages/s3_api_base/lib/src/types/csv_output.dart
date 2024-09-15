/// Describes how uncompressed comma-separated values (CSV)-formatted results
/// are formatted.
class CSVOutput {
  CSVOutput({
    this.fieldDelimiter,
    this.quoteCharacter,
    this.quoteEscapeCharacter,
    this.quoteFields,
    this.recordDelimiter,
  });

  /// The value used to separate individual fields in a record. You can specify
  /// an arbitrary delimiter.
  final String? fieldDelimiter;

  /// A single character used for escaping when the field delimiter is part of
  /// the value. For example, if the value is a, b, Amazon S3 wraps this field
  /// value in quotation marks, as follows: " a , b ".
  final String? quoteCharacter;

  /// The single character used for escaping the quote character inside an
  /// already escaped value.
  final String? quoteEscapeCharacter;

  /// Indicates whether to use quotation marks around output fields.
  final String? quoteFields;

  /// A single character used to separate individual records in the output.
  /// Instead of the default value, you can specify an arbitrary delimiter.
  final String? recordDelimiter;
}
