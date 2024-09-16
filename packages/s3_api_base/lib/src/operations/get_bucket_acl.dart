import 'package:s3_api_base/src/types/access_control_policy.dart';

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketAclOperation {
  Future<AccessControlPolicy> getBucketAcl({
    /// Specifies the S3 bucket whose ACL is being requested.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
