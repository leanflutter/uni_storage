import 'package:s3_api_base/src/types/server_side_encryption_configuration.dart';

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketEncryptionOperation {
  Future<ServerSideEncryptionConfiguration> getBucketEncryption({
    /// The name of the bucket from which the server-side encryption
    /// configuration is retrieved.
    required String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
