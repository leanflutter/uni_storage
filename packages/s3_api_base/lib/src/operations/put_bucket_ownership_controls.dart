/// This operation is not supported by directory buckets.
abstract mixin class PutBucketOwnershipControlsOperation {
  Future<void> putBucketOwnershipControls({
    /// The name of the Amazon S3 bucket whose OwnershipControls you want to
    /// set.
    required String bucket,

    /// The MD5 hash of the OwnershipControls request body.
    String? contentMD5,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
