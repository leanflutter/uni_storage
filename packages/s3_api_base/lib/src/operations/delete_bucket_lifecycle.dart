/// This operation is not supported by directory buckets.
abstract mixin class DeleteBucketLifecycleOperation {
  Future<void> deleteBucketLifecycle({
    /// The bucket name of the lifecycle to delete.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
