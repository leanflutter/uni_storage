/// A metadata key-value pair to store with an object.
class MetadataEntry {
  MetadataEntry({
    this.name,
    this.value,
  });

  /// Name of the object.
  final String? name;

  /// Value of the object.
  final String? value;
}
