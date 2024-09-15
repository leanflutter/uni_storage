import 'package:s3_api_base/src/types/replication_time_value.dart';

///  A container specifying replication metrics-related settings enabling
/// replication metrics and events.
class Metrics {
  Metrics({
    required this.status,
    this.eventThreshold,
  });

  ///  Specifies whether the replication metrics are enabled.
  final String status;

  ///  A container specifying the time threshold for emitting the
  /// s3:Replication:OperationMissedThreshold event.
  final ReplicationTimeValue? eventThreshold;
}
