/// This operation is not supported by directory buckets.
abstract mixin class PutBucketWebsiteOperation {
  Future<void> putBucketWebsite({
    /// The bucket name.
    required String bucket,

    /// The base64-encoded 128-bit MD5 digest of the data. You must use this
    /// header as a message integrity check to verify that the request body was
    /// not corrupted in transit. For more information, see RFC 1864.
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
