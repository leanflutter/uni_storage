/// Root level tag for the PolicyStatus parameters.
class PolicyStatus {
  PolicyStatus({
    this.isPublic,
  });

  /// The policy status for this bucket. TRUE indicates that this bucket is
  /// public. FALSE indicates that the bucket is not public.
  final bool? isPublic;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketPolicyStatusOperation {
  Future<dynamic> getBucketPolicyStatus({
    /// The name of the Amazon S3 bucket whose policy status you want to
    /// retrieve.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
