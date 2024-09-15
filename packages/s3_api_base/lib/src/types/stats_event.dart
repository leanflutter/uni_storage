import 'package:s3_api_base/src/types/stats.dart';

/// Container for the Stats Event.
class StatsEvent {
  StatsEvent({
    this.details,
  });

  /// The Stats event details.
  final Stats? details;
}
