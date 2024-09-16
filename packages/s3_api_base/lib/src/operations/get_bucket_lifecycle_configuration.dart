import 'package:s3_api_base/src/types/lifecycle_rule.dart';

/// Root level tag for the LifecycleConfiguration parameters.
class LifecycleConfiguration {
  LifecycleConfiguration({
    this.rule,
  });

  /// Container for a lifecycle rule.
  final List<LifecycleRule>? rule;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketLifecycleConfigurationOperation {
  Future<LifecycleConfiguration> getBucketLifecycleConfiguration({
    /// The name of the bucket for which to get the lifecycle information.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
