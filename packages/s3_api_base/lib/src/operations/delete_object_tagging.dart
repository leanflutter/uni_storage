/// This operation is not supported by directory buckets.
abstract mixin class DeleteObjectTaggingOperation {
  Future<void> deleteObjectTagging({
    /// The bucket name containing the objects from which to remove the tags.
    required String bucket,

    /// The key that identifies the object in the bucket from which to remove
    /// all tags.
    required String key,

    /// The versionId of the object that the tag-set will be removed from.
    String? versionId,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
