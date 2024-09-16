/// This operation is not supported by directory buckets.
abstract mixin class PutBucketAclOperation {
  Future<dynamic> putBucketAcl({
    /// The bucket to which to apply the ACL.
    String bucket,

    /// The base64-encoded 128-bit MD5 digest of the data. This header must be
    /// used as a message integrity check to verify that the request body was
    /// not corrupted in transit. For more information, go to RFC 1864.
    String? contentMD5,

    /// The canned ACL to apply to the bucket.
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
