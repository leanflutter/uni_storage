/// Root level tag for the InitiateMultipartUploadResult parameters.
class InitiateMultipartUploadResult {
  InitiateMultipartUploadResult({
    this.bucket,
    this.key,
    this.uploadId,
  });

  /// The name of the bucket to which the multipart upload was initiated. Does
  /// not return the access point ARN or access point alias if used.
  final String? bucket;

  /// Object key for which the multipart upload was initiated.
  final String? key;

  /// ID for the initiated multipart upload.
  final String? uploadId;
}

/// This action initiates a multipart upload and returns an upload ID. This
/// upload ID is used to associate all of the parts in the specific multipart
/// upload. You specify this upload ID in each of your subsequent upload part
/// requests (see UploadPart). You also include this upload ID in the final
/// request to either complete or abort the multipart upload request. For more
/// information about multipart uploads, see Multipart Upload Overview in the
/// Amazon S3 User Guide.
abstract mixin class CreateMultipartUploadOperation {
  Future<InitiateMultipartUploadResult> createMultipartUpload({
    /// The name of the bucket where the multipart upload is initiated and where
    /// the object is uploaded.
    required String bucket,

    /// Specifies caching behavior along the request/reply chain.
    String? cacheControl,

    /// Specifies presentational information for the object.
    String? contentDisposition,

    /// Specifies what content encodings have been applied to the object and
    /// thus what decoding mechanisms must be applied to obtain the media-type
    /// referenced by the Content-Type header field.
    String? contentEncoding,

    /// The language that the content is in.
    String? contentLanguage,

    /// A standard MIME type describing the format of the object data.
    String? contentType,

    /// The date and time at which the object is no longer cacheable.
    String? expires,

    /// Object key for which the multipart upload is to be initiated.
    required String key,

    /// The canned ACL to apply to the object. Amazon S3 supports a set of
    /// predefined ACLs, known as canned ACLs. Each canned ACL has a predefined
    /// set of grantees and permissions. For more information, see Canned ACL in
    /// the Amazon S3 User Guide.
    String? acl,

    /// Indicates the algorithm that you want Amazon S3 to use to create the
    /// checksum for the object. For more information, see Checking object
    /// integrity in the Amazon S3 User Guide.
    String? checksumAlgorithm,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Specify access permissions explicitly to give the grantee READ,
    /// READ_ACP, and WRITE_ACP permissions on the object.
    String? grantFullControl,

    /// Specify access permissions explicitly to allow grantee to read the
    /// object data and its metadata.
    String? grantRead,

    /// Specify access permissions explicitly to allows grantee to read the
    /// object ACL.
    String? grantReadAcp,

    /// Specify access permissions explicitly to allows grantee to allow grantee
    /// to write the ACL for the applicable object.
    String? grantWriteAcp,

    /// Specifies whether you want to apply a legal hold to the uploaded object.
    String? objectLockLegalHold,

    /// Specifies the Object Lock mode that you want to apply to the uploaded
    /// object.
    String? objectLockMode,

    /// Specifies the date and time when you want the Object Lock to expire.
    String? objectLockRetainUntilDate,

    /// Confirms that the requester knows that they will be charged for the
    /// request. Bucket owners need not specify this parameter in their
    /// requests. If either the source or destination S3 bucket has Requester
    /// Pays enabled, the requester will pay for corresponding charges to copy
    /// the object. For information about downloading objects from Requester
    /// Pays buckets, see Downloading Objects in Requester Pays Buckets in the
    /// Amazon S3 User Guide.
    String? requestPayer,

    /// The server-side encryption algorithm used when you store this object in
    /// Amazon S3 (for example, AES256, aws:kms).
    String? serverSideEncryption,

    /// Specifies the ID (Key ID, Key ARN, or Key Alias) of the symmetric
    /// encryption customer managed key to use for object encryption.
    String? serverSideEncryptionAwsKmsKeyId,

    /// Specifies whether Amazon S3 should use an S3 Bucket Key for object
    /// encryption with server-side encryption using AWS Key Management Service
    /// (AWS KMS) keys (SSE-KMS). Setting this header to true causes Amazon S3
    /// to use an S3 Bucket Key for object encryption with SSE-KMS.
    String? serverSideEncryptionBucketKeyEnabled,

    /// Specifies the AWS KMS Encryption Context to use for object encryption.
    /// The value of this header is a base64-encoded UTF-8 string holding JSON
    /// with the encryption context key-value pairs.
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

    /// Specifies the 128-bit MD5 digest of the customer-provided encryption key
    /// according to RFC 1321. Amazon S3 uses this header for a message
    /// integrity check to ensure that the encryption key was transmitted
    /// without error.
    String? serverSideEncryptionCustomerKeyMD5,

    /// By default, Amazon S3 uses the STANDARD Storage Class to store newly
    /// created objects. The STANDARD storage class provides high durability and
    /// high availability. Depending on performance needs, you can specify a
    /// different Storage Class. For more information, see Storage Classes in
    /// the Amazon S3 User Guide.
    String? storageClass,

    /// The tag-set for the object. The tag-set must be encoded as URL Query
    /// parameters.
    String? tagging,

    /// If the bucket is configured as a website, redirects requests for this
    /// object to another object in the same bucket or to an external URL.
    /// Amazon S3 stores the value of this header in the object metadata.
    String? websiteRedirectLocation,
  });
}
