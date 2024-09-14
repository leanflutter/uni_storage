/// Specifies the restoration status of an object. Objects in certain storage classes must be restored before they can be retrieved. For more information about these storage classes and how to work with archived objects, see Working with archived objects in the Amazon S3 User Guide.
class RestoreStatus {
  RestoreStatus({
    this.isRestoreInProgress,
    this.restoreExpiryDate,
  });

  final bool? isRestoreInProgress;
  final DateTime? restoreExpiryDate;
}
