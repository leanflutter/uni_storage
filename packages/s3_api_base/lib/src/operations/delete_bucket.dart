/// Deletes the S3 bucket. All objects (including all object versions and delete
/// markers) in the bucket must be deleted before the bucket itself can be
/// deleted.
abstract mixin class DeleteBucketOperation {
  Future<dynamic> deleteBucket({
    /// Specifies the bucket being deleted.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
