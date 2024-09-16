/// This operation aborts a multipart upload. After a multipart upload is
/// aborted, no additional parts can be uploaded using that upload ID. The
/// storage consumed by any previously uploaded parts will be freed. However, if
/// any part uploads are currently in progress, those part uploads might or
/// might not succeed. As a result, it might be necessary to abort a given
/// multipart upload multiple times in order to completely free all storage
/// consumed by all parts.
abstract mixin class AbortMultipartUploadOperation {
  Future<dynamic> abortMultipartUpload({
    /// The bucket name to which the upload was taking place.
    String bucket,

    /// Key of the object for which the multipart upload was initiated.
    String key,

    /// Upload ID that identifies the multipart upload.
    String uploadId,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Confirms that the requester knows that they will be charged for the
    /// request. Bucket owners need not specify this parameter in their
    /// requests. If either the source or destination S3 bucket has Requester
    /// Pays enabled, the requester will pay for corresponding charges to copy
    /// the object. For information about downloading objects from Requester
    /// Pays buckets, see Downloading Objects in Requester Pays Buckets in the
    /// Amazon S3 User Guide.
    String? requestPayer,
  });
}
