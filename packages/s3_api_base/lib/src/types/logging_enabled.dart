import 'package:s3_api_base/src/types/target_grant.dart';
import 'package:s3_api_base/src/types/target_object_key_format.dart';

/// Describes where logs are stored and the prefix that Amazon S3 assigns to all
/// log object keys for a bucket. For more information, see PUT Bucket logging
/// in the Amazon S3 API Reference.
class LoggingEnabled {
  LoggingEnabled({
    required this.targetBucket,
    required this.targetPrefix,
    this.targetGrants,
    this.targetObjectKeyFormat,
  });

  /// Specifies the bucket where you want Amazon S3 to store server access logs.
  /// You can have your logs delivered to any bucket that you own, including the
  /// same bucket that is being logged. You can also configure multiple buckets
  /// to deliver their logs to the same target bucket. In this case, you should
  /// choose a different TargetPrefix for each source bucket so that the
  /// delivered log files can be distinguished by key.
  final String targetBucket;

  /// A prefix for all log object keys. If you store log files from multiple
  /// Amazon S3 buckets in a single bucket, you can use a prefix to distinguish
  /// which log files came from which bucket.
  final String targetPrefix;

  /// Container for granting information.
  final List<TargetGrant>? targetGrants;

  /// Amazon S3 key format for log objects.
  final TargetObjectKeyFormat? targetObjectKeyFormat;
}
