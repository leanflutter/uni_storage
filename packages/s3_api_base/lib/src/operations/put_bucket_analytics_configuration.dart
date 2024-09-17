/// This operation is not supported by directory buckets.
abstract mixin class PutBucketAnalyticsConfigurationOperation {
  Future<void> putBucketAnalyticsConfiguration({
    /// The name of the bucket to which an analytics configuration is stored.
    required String bucket,

    /// The ID that identifies the analytics configuration.
    required String id,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
