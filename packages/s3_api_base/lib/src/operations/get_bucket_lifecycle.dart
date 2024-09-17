import 'package:s3_api_base/src/types/lifecycle_configuration.dart';

/// For an updated version of this API, see GetBucketLifecycleConfiguration. If
/// you configured a bucket lifecycle using the filter element, you should see
/// the updated version of this topic. This topic is provided for backward
/// compatibility.
abstract mixin class GetBucketLifecycleOperation {
  Future<LifecycleConfiguration> getBucketLifecycle({
    /// The name of the bucket for which to get the lifecycle information.
    required String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
