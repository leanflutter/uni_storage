import 'package:uni_storage_base/src/models/replication_time_value.dart';

///  A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a Metrics block. 
class ReplicationTime {
  ReplicationTime({
  required  this.status,
  required  this.time,
  });

  final String status;
  final ReplicationTimeValue time;
}
