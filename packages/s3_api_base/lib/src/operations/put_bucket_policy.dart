/// Applies an Amazon S3 bucket policy to an Amazon S3 bucket.
abstract mixin class PutBucketPolicyOperation {
  Future<void> putBucketPolicy({
    /// The name of the bucket.
    String bucket,

    /// The MD5 hash of the request body.
    String? contentMD5,

    /// Set this parameter to true to confirm that you want to remove your
    /// permissions to change this bucket policy in the future.
    String? confirmRemoveSelfBucketAccess,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Indicates the algorithm used to create the checksum for the object when
    /// you use the SDK. This header will not provide any additional
    /// functionality if you don't use the SDK. When you send this header, there
    /// must be a corresponding x-amz-checksum-algorithm or x-amz-trailer header
    /// sent. Otherwise, Amazon S3 fails the request with the HTTP status code
    /// 400 Bad Request.
    String? sdkChecksumAlgorithm,
  });
}
