/// A Retention configuration for an object.
class ObjectLockRetention {
  ObjectLockRetention({
    this.mode,
    this.retainUntilDate,
  });

  /// Indicates the Retention mode for the specified object.
  final String? mode;

  /// The date on which this Object Lock Retention will expire.
  final DateTime? retainUntilDate;
}
