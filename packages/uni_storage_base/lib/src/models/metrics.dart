import 'package:uni_storage_base/src/models/replication_time_value.dart';

///  A container specifying replication metrics-related settings enabling replication metrics and events.
class Metrics {
  Metrics({
  required  this.status,
    this.eventThreshold,
  });

  final String status;
  final ReplicationTimeValue? eventThreshold;
}
