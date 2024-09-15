import 'package:s3_api_base/src/types/csv_output.dart';
import 'package:s3_api_base/src/types/json_output.dart';

/// Describes how results of the Select job are serialized.
class OutputSerialization {
  OutputSerialization({
    this.csv,
    this.json,
  });

  /// Describes the serialization of CSV-encoded Select results.
  final CSVOutput? csv;

  /// Specifies JSON as request's output serialization format.
  final JSONOutput? json;
}
