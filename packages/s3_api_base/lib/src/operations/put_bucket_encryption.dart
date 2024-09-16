/// This operation is not supported by directory buckets.
abstract mixin class PutBucketEncryptionOperation {
  Future<void> putBucketEncryption({
    /// Specifies default encryption for a bucket using server-side encryption
    /// with different key options. By default, all buckets have a default
    /// encryption configuration that uses server-side encryption with Amazon S3
    /// managed keys (SSE-S3). You can optionally configure default encryption
    /// for a bucket by using server-side encryption with an AWS KMS key
    /// (SSE-KMS) or a customer-provided key (SSE-C). For information about the
    /// bucket default encryption feature, see Amazon S3 Bucket Default
    /// Encryption in the Amazon S3 User Guide.
    String bucket,

    /// The base64-encoded 128-bit MD5 digest of the server-side encryption
    /// configuration.
    String? contentMD5,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Indicates the algorithm used to create the checksum for the object when
    /// you use the SDK. This header will not provide any additional
    /// functionality if you don't use the SDK. When you send this header, there
    /// must be a corresponding x-amz-checksum or x-amz-trailer header sent.
    /// Otherwise, Amazon S3 fails the request with the HTTP status code 400 Bad
    /// Request. For more information, see Checking object integrity in the
    /// Amazon S3 User Guide.
    String? sdkChecksumAlgorithm,
  });
}
