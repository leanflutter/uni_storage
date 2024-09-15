/// Specifies the location where the bucket will be created.
class LocationInfo {
  LocationInfo({
    this.name,
    this.type,
  });

  /// The name of the location where the bucket will be created.
  final String? name;

  /// The type of location where the bucket will be created.
  final String? type;
}
