/// Specifies the restoration status of an object. Objects in certain storage
/// classes must be restored before they can be retrieved. For more information
/// about these storage classes and how to work with archived objects, see
/// Working with archived objects in the Amazon S3 User Guide.
class RestoreStatus {
  RestoreStatus({
    this.isRestoreInProgress,
    this.restoreExpiryDate,
  });

  /// Specifies whether the object is currently being restored. If the object
  /// restoration is in progress, the header returns the value TRUE. For
  /// example:
  final bool? isRestoreInProgress;

  /// Indicates when the restored copy will expire. This value is populated only
  /// if the object has already been restored. For example:
  final DateTime? restoreExpiryDate;
}
