/// This operation is not supported by directory buckets.
abstract mixin class PutBucketIntelligentTieringConfigurationOperation {
  Future<dynamic> putBucketIntelligentTieringConfiguration({
    /// The name of the Amazon S3 bucket whose configuration you want to modify
    /// or retrieve.
    String bucket,

    /// The ID used to identify the S3 Intelligent-Tiering configuration.
    String id,
  });
}
