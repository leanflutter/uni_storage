import 'package:uni_storage_base/src/models/csv_output.dart';
import 'package:uni_storage_base/src/models/json_output.dart';

/// Describes how results of the Select job are serialized.
class OutputSerialization {
  OutputSerialization({
    this.cSV,
    this.jSON,
  });

  final CSVOutput? cSV;
  final JSONOutput? jSON;
}
