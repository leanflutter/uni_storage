/// Returns the policy of a specified bucket.
abstract mixin class GetBucketPolicyOperation {
  Future<dynamic> getBucketPolicy({
    /// The bucket name to get the bucket policy for.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
