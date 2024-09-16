/// This operation is not supported by directory buckets.
abstract mixin class PutObjectRetentionOperation {
  Future<dynamic> putObjectRetention({
    /// The bucket name that contains the object you want to apply this Object
    /// Retention configuration to.
    String bucket,

    /// The MD5 hash for the request body.
    String? contentMD5,

    /// The key name for the object that you want to apply this Object Retention
    /// configuration to.
    String key,

    /// The version ID for the object that you want to apply this Object
    /// Retention configuration to.
    String? versionId,

    /// Indicates whether this action should bypass Governance-mode
    /// restrictions.
    String? bypassGovernanceRetention,

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

    /// Indicates the algorithm used to create the checksum for the object when
    /// you use the SDK. This header will not provide any additional
    /// functionality if you don't use the SDK. When you send this header, there
    /// must be a corresponding x-amz-checksum or x-amz-trailer header sent.
    /// Otherwise, Amazon S3 fails the request with the HTTP status code 400 Bad
    /// Request. For more information, see Checking object integrity in the
    /// Amazon S3 User Guide.
    String? sdkChecksumAlgorithm,
  });
}
