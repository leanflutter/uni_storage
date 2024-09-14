/// Specifies when an object transitions to a specified storage class. For more information about Amazon S3 lifecycle configuration rules, see Transitioning Objects Using Amazon S3 Lifecycle in the Amazon S3 User Guide.
class Transition {
  Transition({
    this.date,
    this.days,
    this.storageClass,
  });

  final DateTime? date;
  final int? days;
  final String? storageClass;
}
