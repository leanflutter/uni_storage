import 'package:s3_api_base/src/types/partitioned_prefix.dart';
import 'package:s3_api_base/src/types/simple_prefix.dart';

/// Amazon S3 key format for log objects. Only one format, PartitionedPrefix or
/// SimplePrefix, is allowed.
class TargetObjectKeyFormat {
  TargetObjectKeyFormat({
    this.partitionedPrefix,
    this.simplePrefix,
  });

  /// Partitioned S3 key for log objects.
  final PartitionedPrefix? partitionedPrefix;

  /// To use the simple format for S3 keys for log objects. To specify
  /// SimplePrefix format, set SimplePrefix to {}.
  final SimplePrefix? simplePrefix;
}
