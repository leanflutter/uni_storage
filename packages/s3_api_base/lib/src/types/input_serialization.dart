import 'package:s3_api_base/src/types/csv_input.dart';
import 'package:s3_api_base/src/types/json_input.dart';
import 'package:s3_api_base/src/types/parquet_input.dart';

/// Describes the serialization format of the object.
class InputSerialization {
  InputSerialization({
    this.compressionType,
    this.csv,
    this.json,
    this.parquet,
  });

  /// Specifies object's compression format. Valid values: NONE, GZIP, BZIP2.
  /// Default Value: NONE.
  final String? compressionType;

  /// Describes the serialization of a CSV-encoded object.
  final CSVInput? csv;

  /// Specifies JSON as object's input serialization format.
  final JSONInput? json;

  /// Specifies Parquet as object's input serialization format.
  final ParquetInput? parquet;
}
