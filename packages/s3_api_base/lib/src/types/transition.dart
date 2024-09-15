/// Specifies when an object transitions to a specified storage class. For more
/// information about Amazon S3 lifecycle configuration rules, see Transitioning
/// Objects Using Amazon S3 Lifecycle in the Amazon S3 User Guide.
class Transition {
  Transition({
    this.date,
    this.days,
    this.storageClass,
  });

  /// Indicates when objects are transitioned to the specified storage class.
  /// The date value must be in ISO 8601 format. The time is always midnight
  /// UTC.
  final DateTime? date;

  /// Indicates the number of days after creation when objects are transitioned
  /// to the specified storage class. The value must be a positive integer.
  final int? days;

  /// The storage class to which you want the object to transition.
  final String? storageClass;
}
