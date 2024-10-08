///  A container specifying the time value for S3 Replication Time Control (S3
/// RTC) and replication metrics EventThreshold.
class ReplicationTimeValue {
  ReplicationTimeValue({
    this.minutes,
  });

  ///  Contains an integer specifying time in minutes.
  final int? minutes;
}
