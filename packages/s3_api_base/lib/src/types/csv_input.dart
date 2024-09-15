/// Describes how an uncompressed comma-separated values (CSV)-formatted input
/// object is formatted.
class CSVInput {
  CSVInput({
    this.allowQuotedRecordDelimiter,
    this.comments,
    this.fieldDelimiter,
    this.fileHeaderInfo,
    this.quoteCharacter,
    this.quoteEscapeCharacter,
    this.recordDelimiter,
  });

  /// Specifies that CSV field values may contain quoted record delimiters and
  /// such records should be allowed. Default value is FALSE. Setting this value
  /// to TRUE may lower performance.
  final bool? allowQuotedRecordDelimiter;

  /// A single character used to indicate that a row should be ignored when the
  /// character is present at the start of that row. You can specify any
  /// character to indicate a comment line. The default character is #.
  final String? comments;

  /// A single character used to separate individual fields in a record. You can
  /// specify an arbitrary delimiter.
  final String? fieldDelimiter;

  /// Describes the first line of input. Valid values are:
  final String? fileHeaderInfo;

  /// A single character used for escaping when the field delimiter is part of
  /// the value. For example, if the value is a, b, Amazon S3 wraps this field
  /// value in quotation marks, as follows: " a , b ".
  final String? quoteCharacter;

  /// A single character used for escaping the quotation mark character inside
  /// an already escaped value. For example, the value """ a , b """ is parsed
  /// as " a , b ".
  final String? quoteEscapeCharacter;

  /// A single character used to separate individual records in the input.
  /// Instead of the default value, you can specify an arbitrary delimiter.
  final String? recordDelimiter;
}
