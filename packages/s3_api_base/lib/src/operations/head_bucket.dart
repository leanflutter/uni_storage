/// You can use this operation to determine if a bucket exists and if you have
/// permission to access it. The action returns a 200 OK if the bucket exists
/// and you have permission to access it.
abstract mixin class HeadBucketOperation {
  Future<dynamic> headBucket({
    /// The bucket name.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
