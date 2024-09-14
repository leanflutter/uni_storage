import 'package:uni_storage_base/src/models/continuation_event.dart';
import 'package:uni_storage_base/src/models/end_event.dart';
import 'package:uni_storage_base/src/models/progress_event.dart';
import 'package:uni_storage_base/src/models/records_event.dart';
import 'package:uni_storage_base/src/models/stats_event.dart';

/// The container for selecting objects from a content event stream.
class SelectObjectContentEventStream {
  SelectObjectContentEventStream({
    this.cont,
    this.end,
    this.progress,
    this.records,
    this.stats,
  });

  final ContinuationEvent? cont;
  final EndEvent? end;
  final ProgressEvent? progress;
  final RecordsEvent? records;
  final StatsEvent? stats;
}
