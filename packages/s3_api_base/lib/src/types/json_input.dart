/// Specifies JSON as object's input serialization format.
class JSONInput {
  JSONInput({
    this.type,
  });

  /// The type of JSON. Valid values: Document, Lines.
  final String? type;
}
