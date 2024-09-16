/// Adds an object to a bucket.
abstract mixin class PutObjectOperation {
  Future<void> putObject({
    /// The bucket name to which the PUT action was initiated.
    String bucket,

    /// Can be used to specify caching behavior along the request/reply chain.
    /// For more information, see
    /// http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9.
    String? cacheControl,

    /// Specifies presentational information for the object. For more
    /// information, see https://www.rfc-editor.org/rfc/rfc6266#section-4.
    String? contentDisposition,

    /// Specifies what content encodings have been applied to the object and
    /// thus what decoding mechanisms must be applied to obtain the media-type
    /// referenced by the Content-Type header field. For more information, see
    /// https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding.
    String? contentEncoding,

    /// The language the content is in.
    String? contentLanguage,

    /// Size of the body in bytes. This parameter is useful when the size of the
    /// body cannot be determined automatically. For more information, see
    /// https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length.
    String? contentLength,

    /// The base64-encoded 128-bit MD5 digest of the message (without the
    /// headers) according to RFC 1864. This header can be used as a message
    /// integrity check to verify that the data is the same data that was
    /// originally sent. Although it is optional, we recommend using the
    /// Content-MD5 mechanism as an end-to-end integrity check. For more
    /// information about REST request authentication, see REST Authentication.
    String? contentMD5,

    /// A standard MIME type describing the format of the contents. For more
    /// information, see
    /// https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type.
    String? contentType,

    /// The date and time at which the object is no longer cacheable. For more
    /// information, see https://www.rfc-editor.org/rfc/rfc7234#section-5.3.
    String? expires,

    /// Uploads the object only if the object key name does not already exist in
    /// the bucket specified. Otherwise, Amazon S3 returns a 412 Precondition
    /// Failed error.
    String? ifNoneMatch,

    /// Object key for which the PUT action was initiated.
    String key,

    /// The canned ACL to apply to the object. For more information, see Canned
    /// ACL in the Amazon S3 User Guide.
    String? acl,

    /// This header can be used as a data integrity check to verify that the
    /// data received is the same data that was originally sent. This header
    /// specifies the base64-encoded, 32-bit CRC-32 checksum of the object. For
    /// more information, see Checking object integrity in the Amazon S3 User
    /// Guide.
    String? checksumCrc32,

    /// This header can be used as a data integrity check to verify that the
    /// data received is the same data that was originally sent. This header
    /// specifies the base64-encoded, 32-bit CRC-32C checksum of the object. For
    /// more information, see Checking object integrity in the Amazon S3 User
    /// Guide.
    String? checksumCrc32c,

    /// This header can be used as a data integrity check to verify that the
    /// data received is the same data that was originally sent. This header
    /// specifies the base64-encoded, 160-bit SHA-1 digest of the object. For
    /// more information, see Checking object integrity in the Amazon S3 User
    /// Guide.
    String? checksumSha1,

    /// This header can be used as a data integrity check to verify that the
    /// data received is the same data that was originally sent. This header
    /// specifies the base64-encoded, 256-bit SHA-256 digest of the object. For
    /// more information, see Checking object integrity in the Amazon S3 User
    /// Guide.
    String? checksumSha256,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the
    /// object.
    String? grantFullControl,

    /// Allows grantee to read the object data and its metadata.
    String? grantRead,

    /// Allows grantee to read the object ACL.
    String? grantReadAcp,

    /// Allows grantee to write the ACL for the applicable object.
    String? grantWriteAcp,

    /// Specifies whether a legal hold will be applied to this object. For more
    /// information about S3 Object Lock, see Object Lock in the Amazon S3 User
    /// Guide.
    String? objectLockLegalHold,

    /// The Object Lock mode that you want to apply to this object.
    String? objectLockMode,

    /// The date and time when you want this object's Object Lock to expire.
    /// Must be formatted as a timestamp parameter.
    String? objectLockRetainUntilDate,

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
    /// must be a corresponding x-amz-checksum-algorithm or x-amz-trailer header
    /// sent. Otherwise, Amazon S3 fails the request with the HTTP status code
    /// 400 Bad Request.
    String? sdkChecksumAlgorithm,

    /// The server-side encryption algorithm that was used when you store this
    /// object in Amazon S3 (for example, AES256, aws:kms, aws:kms:dsse).
    String? serverSideEncryption,

    /// If x-amz-server-side-encryption has a valid value of aws:kms or
    /// aws:kms:dsse, this header specifies the ID (Key ID, Key ARN, or Key
    /// Alias) of the AWS Key Management Service (AWS KMS) symmetric encryption
    /// customer managed key that was used for the object. If you specify
    /// x-amz-server-side-encryption:aws:kms or
    /// x-amz-server-side-encryption:aws:kms:dsse, but do not provide
    /// x-amz-server-side-encryption-aws-kms-key-id, Amazon S3 uses the AWS
    /// managed key (aws/s3) to protect the data. If the KMS key does not exist
    /// in the same account that's issuing the command, you must use the full
    /// ARN and not just the ID.
    String? serverSideEncryptionAwsKmsKeyId,

    /// Specifies whether Amazon S3 should use an S3 Bucket Key for object
    /// encryption with server-side encryption using AWS Key Management Service
    /// (AWS KMS) keys (SSE-KMS). Setting this header to true causes Amazon S3
    /// to use an S3 Bucket Key for object encryption with SSE-KMS.
    String? serverSideEncryptionBucketKeyEnabled,

    /// Specifies the AWS KMS Encryption Context to use for object encryption.
    /// The value of this header is a base64-encoded UTF-8 string holding JSON
    /// with the encryption context key-value pairs. This value is stored as
    /// object metadata and automatically gets passed on to AWS KMS for future
    /// GetObject or CopyObject operations on this object. This value must be
    /// explicitly added during CopyObject operations.
    String? serverSideEncryptionContext,

    /// Specifies the algorithm to use when encrypting the object (for example,
    /// AES256).
    String? serverSideEncryptionCustomerAlgorithm,

    /// Specifies the customer-provided encryption key for Amazon S3 to use in
    /// encrypting data. This value is used to store the object and then it is
    /// discarded; Amazon S3 does not store the encryption key. The key must be
    /// appropriate for use with the algorithm specified in the
    /// x-amz-server-side-encryption-customer-algorithm header.
    String? serverSideEncryptionCustomerKey,

    /// Specifies the 128-bit MD5 digest of the encryption key according to RFC
    /// 1321. Amazon S3 uses this header for a message integrity check to ensure
    /// that the encryption key was transmitted without error.
    String? serverSideEncryptionCustomerKeyMD5,

    /// By default, Amazon S3 uses the STANDARD Storage Class to store newly
    /// created objects. The STANDARD storage class provides high durability and
    /// high availability. Depending on performance needs, you can specify a
    /// different Storage Class. For more information, see Storage Classes in
    /// the Amazon S3 User Guide.
    String? storageClass,

    /// The tag-set for the object. The tag-set must be encoded as URL Query
    /// parameters. (For example, "Key1=Value1")
    String? tagging,

    /// If the bucket is configured as a website, redirects requests for this
    /// object to another object in the same bucket or to an external URL.
    /// Amazon S3 stores the value of this header in the object metadata. For
    /// information about object metadata, see Object Key and Metadata in the
    /// Amazon S3 User Guide.
    String? websiteRedirectLocation,
  });
}
