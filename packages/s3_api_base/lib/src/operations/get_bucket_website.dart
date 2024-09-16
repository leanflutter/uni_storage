import 'package:s3_api_base/src/types/website_configuration.dart';

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketWebsiteOperation {
  Future<WebsiteConfiguration> getBucketWebsite({
    /// The bucket name for which to get the website configuration.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
