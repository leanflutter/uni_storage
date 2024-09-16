/// Root level tag for the CopyPartResult parameters.
class CopyPartResult {
  CopyPartResult({
    this.checksumCRC32,
    this.checksumCRC32C,
    this.checksumSHA1,
    this.checksumSHA256,
    this.eTag,
    this.lastModified,
  });

  /// The base64-encoded, 32-bit CRC-32 checksum of the object. This will only
  /// be present if it was uploaded with the object. When you use an API
  /// operation on an object that was uploaded using multipart uploads, this
  /// value may not be a direct checksum value of the full object. Instead, it's
  /// a calculation based on the checksum values of each individual part. For
  /// more information about how checksums are calculated with multipart
  /// uploads, see Checking object integrity in the Amazon S3 User Guide.
  final String? checksumCRC32;

  /// The base64-encoded, 32-bit CRC-32C checksum of the object. This will only
  /// be present if it was uploaded with the object. When you use an API
  /// operation on an object that was uploaded using multipart uploads, this
  /// value may not be a direct checksum value of the full object. Instead, it's
  /// a calculation based on the checksum values of each individual part. For
  /// more information about how checksums are calculated with multipart
  /// uploads, see Checking object integrity in the Amazon S3 User Guide.
  final String? checksumCRC32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be
  /// present if it was uploaded with the object. When you use the API operation
  /// on an object that was uploaded using multipart uploads, this value may not
  /// be a direct checksum value of the full object. Instead, it's a calculation
  /// based on the checksum values of each individual part. For more information
  /// about how checksums are calculated with multipart uploads, see Checking
  /// object integrity in the Amazon S3 User Guide.
  final String? checksumSHA1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only
  /// be present if it was uploaded with the object. When you use an API
  /// operation on an object that was uploaded using multipart uploads, this
  /// value may not be a direct checksum value of the full object. Instead, it's
  /// a calculation based on the checksum values of each individual part. For
  /// more information about how checksums are calculated with multipart
  /// uploads, see Checking object integrity in the Amazon S3 User Guide.
  final String? checksumSHA256;

  /// Entity tag of the object.
  final String? eTag;

  /// Date and time at which the object was uploaded.
  final DateTime? lastModified;
}

/// Uploads a part by copying data from an existing object as data source. To
/// specify the data source, you add the request header x-amz-copy-source in
/// your request. To specify a byte range, you add the request header
/// x-amz-copy-source-range in your request.
abstract mixin class UploadPartCopyOperation {
  Future<dynamic> uploadPartCopy({
    /// The bucket name.
    String bucket,

    /// Object key for which the multipart upload was initiated.
    String key,

    /// Part number of part being copied. This is a positive integer between 1
    /// and 10,000.
    String partNumber,

    /// Upload ID identifying the multipart upload whose part is being copied.
    String uploadId,

    /// Specifies the source object for the copy operation. You specify the
    /// value in one of two formats, depending on whether you want to access the
    /// source object through an access point:
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

    /// The range of bytes to copy from the source object. The range value must
    /// use the form bytes=first-last, where the first and last are the
    /// zero-based byte offsets to copy. For example, bytes=0-9 indicates that
    /// you want to copy the first 10 bytes of the source. You can copy a range
    /// only if the source object is greater than 5 MB.
    String? copySourceRange,

    /// Specifies the algorithm to use when decrypting the source object (for
    /// example, AES256).
    String? copySourceServerSideEncryptionCustomerAlgorithm,

    /// Specifies the customer-provided encryption key for Amazon S3 to use to
    /// decrypt the source object. The encryption key provided in this header
    /// must be one that was used when the source object was created.
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

    /// Confirms that the requester knows that they will be charged for the
    /// request. Bucket owners need not specify this parameter in their
    /// requests. If either the source or destination S3 bucket has Requester
    /// Pays enabled, the requester will pay for corresponding charges to copy
    /// the object. For information about downloading objects from Requester
    /// Pays buckets, see Downloading Objects in Requester Pays Buckets in the
    /// Amazon S3 User Guide.
    String? requestPayer,

    /// Specifies the algorithm to use when encrypting the object (for example,
    /// AES256).
    String? serverSideEncryptionCustomerAlgorithm,

    /// Specifies the customer-provided encryption key for Amazon S3 to use in
    /// encrypting data. This value is used to store the object and then it is
    /// discarded; Amazon S3 does not store the encryption key. The key must be
    /// appropriate for use with the algorithm specified in the
    /// x-amz-server-side-encryption-customer-algorithm header. This must be the
    /// same encryption key specified in the initiate multipart upload request.
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
  });
}
