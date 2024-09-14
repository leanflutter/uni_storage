/// A Retention configuration for an object.
class ObjectLockRetention {
  ObjectLockRetention({
    this.mode,
    this.retainUntilDate,
  });

  final String? mode;
  final DateTime? retainUntilDate;
}
