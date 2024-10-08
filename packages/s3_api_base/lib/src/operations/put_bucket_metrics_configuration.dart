/// This operation is not supported by directory buckets.
abstract mixin class PutBucketMetricsConfigurationOperation {
  Future<void> putBucketMetricsConfiguration({
    /// The name of the bucket for which the metrics configuration is set.
    required String bucket,

    /// The ID used to identify the metrics configuration. The ID has a 64
    /// character limit and can only contain letters, numbers, periods, dashes,
    /// and underscores.
    required String id,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
