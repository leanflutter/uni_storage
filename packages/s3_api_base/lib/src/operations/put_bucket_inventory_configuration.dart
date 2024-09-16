/// This operation is not supported by directory buckets.
abstract mixin class PutBucketInventoryConfigurationOperation {
  Future<void> putBucketInventoryConfiguration({
    /// The name of the bucket where the inventory configuration will be stored.
    String bucket,

    /// The ID used to identify the inventory configuration.
    String id,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
