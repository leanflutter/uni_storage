import 'package:s3_api_base/src/types/replication_time_value.dart';

///  A container specifying S3 Replication Time Control (S3 RTC) related
/// information, including whether S3 RTC is enabled and the time when all
/// objects and operations on objects must be replicated. Must be specified
/// together with a Metrics block.
class ReplicationTime {
  ReplicationTime({
    required this.status,
    required this.time,
  });

  ///  Specifies whether the replication time is enabled.
  final String status;

  ///  A container specifying the time by which replication should be complete
  /// for all objects and operations on objects.
  final ReplicationTimeValue time;
}
