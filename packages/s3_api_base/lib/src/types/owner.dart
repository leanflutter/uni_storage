/// Container for the owner's display name and ID.
class Owner {
  Owner({
    this.displayName,
    this.id,
  });

  /// Container for the display name of the owner. This value is only supported
  /// in the following AWS Regions:
  final String? displayName;

  /// Container for the ID of the owner.
  final String? id;
}
