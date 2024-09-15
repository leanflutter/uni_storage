import 'package:s3_api_base/src/types/continuation_event.dart';
import 'package:s3_api_base/src/types/end_event.dart';
import 'package:s3_api_base/src/types/progress_event.dart';
import 'package:s3_api_base/src/types/records_event.dart';
import 'package:s3_api_base/src/types/stats_event.dart';

/// The container for selecting objects from a content event stream.
class SelectObjectContentEventStream {
  SelectObjectContentEventStream({
    this.cont,
    this.end,
    this.progress,
    this.records,
    this.stats,
  });

  /// The Continuation Event.
  final ContinuationEvent? cont;

  /// The End Event.
  final EndEvent? end;

  /// The Progress Event.
  final ProgressEvent? progress;

  /// The Records Event.
  final RecordsEvent? records;

  /// The Stats Event.
  final StatsEvent? stats;
}
