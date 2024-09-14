import 'package:uni_storage_base/src/models/csv_input.dart';
import 'package:uni_storage_base/src/models/json_input.dart';
import 'package:uni_storage_base/src/models/parquet_input.dart';

/// Describes the serialization format of the object.
class InputSerialization {
  InputSerialization({
    this.compressionType,
    this.cSV,
    this.jSON,
    this.parquet,
  });

  final String? compressionType;
  final CSVInput? cSV;
  final JSONInput? jSON;
  final ParquetInput? parquet;
}
