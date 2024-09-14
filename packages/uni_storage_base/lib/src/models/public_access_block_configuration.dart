/// The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see The Meaning of "Public" in the Amazon S3 User Guide. 
class PublicAccessBlockConfiguration {
  PublicAccessBlockConfiguration({
    this.blockPublicAcls,
    this.blockPublicPolicy,
    this.ignorePublicAcls,
    this.restrictPublicBuckets,
  });

  final bool? blockPublicAcls;
  final bool? blockPublicPolicy;
  final bool? ignorePublicAcls;
  final bool? restrictPublicBuckets;
}
