import 'package:s3_api_base/src/types/replication_rule.dart';

/// Root level tag for the ReplicationConfiguration parameters.
class ReplicationConfiguration {
  ReplicationConfiguration({
    this.role,
    this.rule,
  });

  /// The Amazon Resource Name (ARN) of the AWS Identity and Access Management
  /// (IAM) role that Amazon S3 assumes when replicating objects. For more
  /// information, see How to Set Up Replication in the Amazon S3 User Guide.
  final String? role;

  /// A container for one or more replication rules. A replication configuration
  /// must have at least one rule and can contain a maximum of 1,000 rules.
  final List<ReplicationRule>? rule;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketReplicationOperation {
  Future<dynamic> getBucketReplication({
    /// The bucket name for which to get the replication information.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
