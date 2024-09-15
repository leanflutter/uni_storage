/// Container for the expiration for the lifecycle of the object.
class LifecycleExpiration {
  LifecycleExpiration({
    this.date,
    this.days,
    this.expiredObjectDeleteMarker,
  });

  /// Indicates at what date the object is to be moved or deleted. The date
  /// value must conform to the ISO 8601 format. The time is always midnight
  /// UTC.
  final DateTime? date;

  /// Indicates the lifetime, in days, of the objects that are subject to the
  /// rule. The value must be a non-zero positive integer.
  final int? days;

  /// Indicates whether Amazon S3 will remove a delete marker with no noncurrent
  /// versions. If set to true, the delete marker will be expired; if set to
  /// false the policy takes no action. This cannot be specified with Days or
  /// Date in a Lifecycle Expiration Policy.
  final bool? expiredObjectDeleteMarker;
}
