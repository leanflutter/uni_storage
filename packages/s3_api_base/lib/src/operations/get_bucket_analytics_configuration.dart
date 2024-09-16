import 'package:s3_api_base/src/types/analytics_configuration.dart';

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketAnalyticsConfigurationOperation {
  Future<AnalyticsConfiguration> getBucketAnalyticsConfiguration({
    /// The name of the bucket from which an analytics configuration is
    /// retrieved.
    String bucket,

    /// The ID that identifies the analytics configuration.
    String id,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
