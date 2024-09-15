/// The PublicAccessBlock configuration that you want to apply to this Amazon S3
/// bucket. You can enable the configuration options in any combination. For
/// more information about when Amazon S3 considers a bucket or object public,
/// see The Meaning of "Public" in the Amazon S3 User Guide.
class PublicAccessBlockConfiguration {
  PublicAccessBlockConfiguration({
    this.blockPublicAcls,
    this.blockPublicPolicy,
    this.ignorePublicAcls,
    this.restrictPublicBuckets,
  });

  /// Specifies whether Amazon S3 should block public access control lists
  /// (ACLs) for this bucket and objects in this bucket. Setting this element to
  /// TRUE causes the following behavior:
  final bool? blockPublicAcls;

  /// Specifies whether Amazon S3 should block public bucket policies for this
  /// bucket. Setting this element to TRUE causes Amazon S3 to reject calls to
  /// PUT Bucket policy if the specified bucket policy allows public access.
  final bool? blockPublicPolicy;

  /// Specifies whether Amazon S3 should ignore public ACLs for this bucket and
  /// objects in this bucket. Setting this element to TRUE causes Amazon S3 to
  /// ignore all public ACLs on this bucket and objects in this bucket.
  final bool? ignorePublicAcls;

  /// Specifies whether Amazon S3 should restrict public bucket policies for
  /// this bucket. Setting this element to TRUE restricts access to this bucket
  /// to only AWS service principals and authorized users within this account if
  /// the bucket has a public policy.
  final bool? restrictPublicBuckets;
}
