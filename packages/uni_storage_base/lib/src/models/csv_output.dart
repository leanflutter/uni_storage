/// Describes how uncompressed comma-separated values (CSV)-formatted results are formatted.
class CSVOutput {
  CSVOutput({
    this.fieldDelimiter,
    this.quoteCharacter,
    this.quoteEscapeCharacter,
    this.quoteFields,
    this.recordDelimiter,
  });

  final String? fieldDelimiter;
  final String? quoteCharacter;
  final String? quoteEscapeCharacter;
  final String? quoteFields;
  final String? recordDelimiter;
}
