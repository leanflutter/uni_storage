/// Root level tag for the CopyObjectResult parameters.
class CopyObjectResult {
  CopyObjectResult({
    this.checksumCRC32,
    this.checksumCRC32C,
    this.checksumSHA1,
    this.checksumSHA256,
    this.eTag,
    this.lastModified,
  });

  /// The base64-encoded, 32-bit CRC-32 checksum of the object. This will only
  /// be present if it was uploaded with the object. For more information, see
  /// Checking object integrity in the Amazon S3 User Guide.
  final String? checksumCRC32;

  /// The base64-encoded, 32-bit CRC-32C checksum of the object. This will only
  /// be present if it was uploaded with the object. For more information, see
  /// Checking object integrity in the Amazon S3 User Guide.
  final String? checksumCRC32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be
  /// present if it was uploaded with the object. For more information, see
  /// Checking object integrity in the Amazon S3 User Guide.
  final String? checksumSHA1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only
  /// be present if it was uploaded with the object. For more information, see
  /// Checking object integrity in the Amazon S3 User Guide.
  final String? checksumSHA256;

  /// Returns the ETag of the new object. The ETag reflects only changes to the
  /// contents of an object, not its metadata.
  final String? eTag;

  /// Creation date of the object.
  final DateTime? lastModified;
}

/// Creates a copy of an object that is already stored in Amazon S3.
abstract mixin class CopyObjectOperation {
  Future<dynamic> copyObject({
    /// The name of the destination bucket.
    String bucket,

    /// Specifies the caching behavior along the request/reply chain.
    String? cacheControl,

    /// Specifies presentational information for the object. Indicates whether
    /// an object should be displayed in a web browser or downloaded as a file.
    /// It allows specifying the desired filename for the downloaded file.
    String? contentDisposition,

    /// Specifies what content encodings have been applied to the object and
    /// thus what decoding mechanisms must be applied to obtain the media-type
    /// referenced by the Content-Type header field.
    String? contentEncoding,

    /// The language the content is in.
    String? contentLanguage,

    /// A standard MIME type that describes the format of the object data.
    String? contentType,

    /// The date and time at which the object is no longer cacheable.
    String? expires,

    /// The key of the destination object.
    String key,

    /// The canned access control list (ACL) to apply to the object.
    String? acl,

    /// Indicates the algorithm that you want Amazon S3 to use to create the
    /// checksum for the object. For more information, see Checking object
    /// integrity in the Amazon S3 User Guide.
    String? checksumAlgorithm,

    /// Specifies the source object for the copy operation. The source object
    /// can be up to 5 GB. If the source object is an object that was uploaded
    /// by using a multipart upload, the object copy will be a single part
    /// object after the source object is copied to the destination bucket.
    String copySource,

    /// Copies the object if its entity tag (ETag) matches the specified tag.
    String? copySourceIfMatch,

    /// Copies the object if it has been modified since the specified time.
    String? copySourceIfModifiedSince,

    /// Copies the object if its entity tag (ETag) is different than the
    /// specified ETag.
    String? copySourceIfNoneMatch,

    /// Copies the object if it hasn't been modified since the specified time.
    String? copySourceIfUnmodifiedSince,

    /// Specifies the algorithm to use when decrypting the source object (for
    /// example, AES256).
    String? copySourceServerSideEncryptionCustomerAlgorithm,

    /// Specifies the customer-provided encryption key for Amazon S3 to use to
    /// decrypt the source object. The encryption key provided in this header
    /// must be the same one that was used when the source object was created.
    String? copySourceServerSideEncryptionCustomerKey,

    /// Specifies the 128-bit MD5 digest of the encryption key according to RFC
    /// 1321. Amazon S3 uses this header for a message integrity check to ensure
    /// that the encryption key was transmitted without error.
    String? copySourceServerSideEncryptionCustomerKeyMD5,

    /// The account ID of the expected destination bucket owner. If the account
    /// ID that you provide does not match the actual owner of the destination
    /// bucket, the request fails with the HTTP status code 403 Forbidden
    /// (access denied).
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

    /// Specifies whether the metadata is copied from the source object or
    /// replaced with metadata that's provided in the request. When copying an
    /// object, you can preserve all metadata (the default) or specify new
    /// metadata. If this header isnât specified, COPY is the default
    /// behavior.
    String? metadataDirective,

    /// Specifies whether you want to apply a legal hold to the object copy.
    String? objectLockLegalHold,

    /// The Object Lock mode that you want to apply to the object copy.
    String? objectLockMode,

    /// The date and time when you want the Object Lock of the object copy to
    /// expire.
    String? objectLockRetainUntilDate,

    /// Confirms that the requester knows that they will be charged for the
    /// request. Bucket owners need not specify this parameter in their
    /// requests. If either the source or destination S3 bucket has Requester
    /// Pays enabled, the requester will pay for corresponding charges to copy
    /// the object. For information about downloading objects from Requester
    /// Pays buckets, see Downloading Objects in Requester Pays Buckets in the
    /// Amazon S3 User Guide.
    String? requestPayer,

    /// The server-side encryption algorithm used when storing this object in
    /// Amazon S3 (for example, AES256, aws:kms, aws:kms:dsse). Unrecognized or
    /// unsupported values wonât write a destination object and will receive a
    /// 400 Bad Request response.
    String? serverSideEncryption,

    /// Specifies the AWS KMS ID (Key ID, Key ARN, or Key Alias) to use for
    /// object encryption. All GET and PUT requests for an object protected by
    /// AWS KMS will fail if they're not made via SSL or using SigV4. For
    /// information about configuring any of the officially supported AWS SDKs
    /// and AWS CLI, see Specifying the Signature Version in Request
    /// Authentication in the Amazon S3 User Guide.
    String? serverSideEncryptionAwsKmsKeyId,

    /// Specifies whether Amazon S3 should use an S3 Bucket Key for object
    /// encryption with server-side encryption using AWS Key Management Service
    /// (AWS KMS) keys (SSE-KMS). If a target object uses SSE-KMS, you can
    /// enable an S3 Bucket Key for the object.
    String? serverSideEncryptionBucketKeyEnabled,

    /// Specifies the AWS KMS Encryption Context to use for object encryption.
    /// The value of this header is a base64-encoded UTF-8 string holding JSON
    /// with the encryption context key-value pairs. This value must be
    /// explicitly added to specify encryption context for CopyObject requests.
    String? serverSideEncryptionContext,

    /// Specifies the algorithm to use when encrypting the object (for example,
    /// AES256).
    String? serverSideEncryptionCustomerAlgorithm,

    /// Specifies the customer-provided encryption key for Amazon S3 to use in
    /// encrypting data. This value is used to store the object and then it is
    /// discarded. Amazon S3 does not store the encryption key. The key must be
    /// appropriate for use with the algorithm specified in the
    /// x-amz-server-side-encryption-customer-algorithm header.
    String? serverSideEncryptionCustomerKey,

    /// Specifies the 128-bit MD5 digest of the encryption key according to RFC
    /// 1321. Amazon S3 uses this header for a message integrity check to ensure
    /// that the encryption key was transmitted without error.
    String? serverSideEncryptionCustomerKeyMD5,

    /// The account ID of the expected source bucket owner. If the account ID
    /// that you provide does not match the actual owner of the source bucket,
    /// the request fails with the HTTP status code 403 Forbidden (access
    /// denied).
    String? sourceExpectedBucketOwner,

    /// If the x-amz-storage-class header is not used, the copied object will be
    /// stored in the STANDARD Storage Class by default. The STANDARD storage
    /// class provides high durability and high availability. Depending on
    /// performance needs, you can specify a different Storage Class.
    String? storageClass,

    /// The tag-set for the object copy in the destination bucket. This value
    /// must be used in conjunction with the x-amz-tagging-directive if you
    /// choose REPLACE for the x-amz-tagging-directive. If you choose COPY for
    /// the x-amz-tagging-directive, you don't need to set the x-amz-tagging
    /// header, because the tag-set will be copied from the source object
    /// directly. The tag-set must be encoded as URL Query parameters.
    String? tagging,

    /// Specifies whether the object tag-set is copied from the source object or
    /// replaced with the tag-set that's provided in the request.
    String? taggingDirective,

    /// If the destination bucket is configured as a website, redirects requests
    /// for this object copy to another object in the same bucket or to an
    /// external URL. Amazon S3 stores the value of this header in the object
    /// metadata. This value is unique to each object and is not copied when
    /// using the x-amz-metadata-directive header. Instead, you may opt to
    /// provide this header in combination with the x-amz-metadata-directive
    /// header.
    String? websiteRedirectLocation,
  });
}
