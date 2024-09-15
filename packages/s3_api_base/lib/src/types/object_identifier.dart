/// Object Identifier is unique value to identify objects.
class ObjectIdentifier {
  ObjectIdentifier({
    required this.key,
    this.versionId,
  });

  /// Key name of the object.
  final String key;

  /// Version ID for the specific version of the object to delete.
  final String? versionId;
}
