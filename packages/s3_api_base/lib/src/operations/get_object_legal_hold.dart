/// Root level tag for the LegalHold parameters.
class LegalHold {
  LegalHold({
    this.status,
  });

  /// Indicates whether the specified object has a legal hold in place.
  final String? status;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetObjectLegalHoldOperation {
  Future<dynamic> getObjectLegalHold({
    /// The bucket name containing the object whose legal hold status you want
    /// to retrieve.
    String bucket,

    /// The key name for the object whose legal hold status you want to
    /// retrieve.
    String key,

    /// The version ID of the object whose legal hold status you want to
    /// retrieve.
    String? versionId,

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
