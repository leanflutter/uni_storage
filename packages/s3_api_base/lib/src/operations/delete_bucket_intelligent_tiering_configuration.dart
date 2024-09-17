/// This operation is not supported by directory buckets.
abstract mixin class DeleteBucketIntelligentTieringConfigurationOperation {
  Future<void> deleteBucketIntelligentTieringConfiguration({
    /// The name of the Amazon S3 bucket whose configuration you want to modify
    /// or retrieve.
    required String bucket,

    /// The ID used to identify the S3 Intelligent-Tiering configuration.
    required String id,
  });
}
