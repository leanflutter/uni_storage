/// Object Identifier is unique value to identify objects.
class ObjectIdentifier {
  ObjectIdentifier({
  required  this.key,
    this.versionId,
  });

  final String key;
  final String? versionId;
}
