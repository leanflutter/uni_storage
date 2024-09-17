/// This operation is not supported by directory buckets.
abstract mixin class PutObjectAclOperation {
  Future<void> putObjectAcl({
    /// The bucket name that contains the object to which you want to attach the
    /// ACL.
    required String bucket,

    /// The base64-encoded 128-bit MD5 digest of the data. This header must be
    /// used as a message integrity check to verify that the request body was
    /// not corrupted in transit. For more information, go to RFC 1864.>
    String? contentMD5,

    /// Key for which the PUT action was initiated.
    required String key,

    /// Version ID used to reference a specific version of the object.
    String? versionId,

    /// The canned ACL to apply to the object. For more information, see Canned
    /// ACL.
    String? acl,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Allows grantee the read, write, read ACP, and write ACP permissions on
    /// the bucket.
    String? grantFullControl,

    /// Allows grantee to list the objects in the bucket.
    String? grantRead,

    /// Allows grantee to read the bucket ACL.
    String? grantReadAcp,

    /// Allows grantee to create new objects in the bucket.
    String? grantWrite,

    /// Allows grantee to write the ACL for the applicable bucket.
    String? grantWriteAcp,

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
