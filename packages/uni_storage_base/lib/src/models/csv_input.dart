/// Describes how an uncompressed comma-separated values (CSV)-formatted input object is formatted.
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

  final bool? allowQuotedRecordDelimiter;
  final String? comments;
  final String? fieldDelimiter;
  final String? fileHeaderInfo;
  final String? quoteCharacter;
  final String? quoteEscapeCharacter;
  final String? recordDelimiter;
}
