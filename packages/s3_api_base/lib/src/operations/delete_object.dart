/// Removes an object from a bucket. The behavior depends on the bucket's
/// versioning state:
abstract mixin class DeleteObjectOperation {
  Future<void> deleteObject({
    /// The bucket name of the bucket containing the object.
    String bucket,

    /// Key name of the object to delete.
    String key,

    /// Version ID used to reference a specific version of the object.
    String? versionId,

    /// Indicates whether S3 Object Lock should bypass Governance-mode
    /// restrictions to process this operation. To use this header, you must
    /// have the s3:BypassGovernanceRetention permission.
    String? bypassGovernanceRetention,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// The concatenation of the authentication device's serial number, a space,
    /// and the value that is displayed on your authentication device. Required
    /// to permanently delete a versioned object if versioning is configured
    /// with MFA delete enabled.
    String? mfa,

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
