import 'package:uni_storage_base/src/models/partitioned_prefix.dart';
import 'package:uni_storage_base/src/models/simple_prefix.dart';

/// Amazon S3 key format for log objects. Only one format, PartitionedPrefix or SimplePrefix, is allowed.
class TargetObjectKeyFormat {
  TargetObjectKeyFormat({
    this.partitionedPrefix,
    this.simplePrefix,
  });

  final PartitionedPrefix? partitionedPrefix;
  final SimplePrefix? simplePrefix;
}
