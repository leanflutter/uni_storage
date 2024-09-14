import 'package:uni_storage_base/src/models/target_grant.dart';
import 'package:uni_storage_base/src/models/target_object_key_format.dart';

/// Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For more information, see PUT Bucket logging in the Amazon S3 API Reference.
class LoggingEnabled {
  LoggingEnabled({
  required  this.targetBucket,
  required  this.targetPrefix,
    this.targetGrants,
    this.targetObjectKeyFormat,
  });

  final String targetBucket;
  final String targetPrefix;
  final List<TargetGrant>? targetGrants;
  final TargetObjectKeyFormat? targetObjectKeyFormat;
}
