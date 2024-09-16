import 'package:s3_api_base/src/types/cors_configuration.dart';

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketCorsOperation {
  Future<CORSConfiguration> getBucketCors({
    /// The bucket name for which to get the cors configuration.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
