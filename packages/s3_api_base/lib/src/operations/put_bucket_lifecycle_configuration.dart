/// This operation is not supported by directory buckets.
abstract mixin class PutBucketLifecycleConfigurationOperation {
  Future<void> putBucketLifecycleConfiguration({
    /// The name of the bucket for which to set the configuration.
    String bucket,

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
