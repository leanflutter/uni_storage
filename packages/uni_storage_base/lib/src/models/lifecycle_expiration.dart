/// Container for the expiration for the lifecycle of the object.
class LifecycleExpiration {
  LifecycleExpiration({
    this.date,
    this.days,
    this.expiredObjectDeleteMarker,
  });

  final DateTime? date;
  final int? days;
  final bool? expiredObjectDeleteMarker;
}
