/// Root level tag for the PublicAccessBlockConfiguration parameters.
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

/// This operation is not supported by directory buckets.
abstract mixin class GetPublicAccessBlockOperation {
  Future<PublicAccessBlockConfiguration> getPublicAccessBlock({
    /// The name of the Amazon S3 bucket whose PublicAccessBlock configuration
    /// you want to retrieve.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
