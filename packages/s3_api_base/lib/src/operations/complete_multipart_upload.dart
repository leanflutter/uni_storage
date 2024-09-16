/// Root level tag for the CompleteMultipartUploadResult parameters.
class CompleteMultipartUploadResult {
  CompleteMultipartUploadResult({
    this.bucket,
    this.checksumCRC32,
    this.checksumCRC32C,
    this.checksumSHA1,
    this.checksumSHA256,
    this.eTag,
    this.key,
    this.location,
  });

  /// The name of the bucket that contains the newly created object. Does not
  /// return the access point ARN or access point alias if used.
  final String? bucket;

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

  /// Entity tag that identifies the newly created object's data. Objects with
  /// different object data will have different entity tags. The entity tag is
  /// an opaque string. The entity tag may or may not be an MD5 digest of the
  /// object data. If the entity tag is not an MD5 digest of the object data, it
  /// will contain one or more nonhexadecimal characters and/or will consist of
  /// less than 32 or more than 32 hexadecimal digits. For more information
  /// about how the entity tag is calculated, see Checking object integrity in
  /// the Amazon S3 User Guide.
  final String? eTag;

  /// The object key of the newly created object.
  final String? key;

  /// The URI that identifies the newly created object.
  final String? location;
}

/// Completes a multipart upload by assembling previously uploaded parts.
abstract mixin class CompleteMultipartUploadOperation {
  Future<dynamic> completeMultipartUpload({
    /// Name of the bucket to which the multipart upload was initiated.
    String bucket,

    /// Uploads the object only if the object key name does not already exist in
    /// the bucket specified. Otherwise, Amazon S3 returns a 412 Precondition
    /// Failed error.
    String? ifNoneMatch,

    /// Object key for which the multipart upload was initiated.
    String key,

    /// ID for the initiated multipart upload.
    String uploadId,

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

    /// Confirms that the requester knows that they will be charged for the
    /// request. Bucket owners need not specify this parameter in their
    /// requests. If either the source or destination S3 bucket has Requester
    /// Pays enabled, the requester will pay for corresponding charges to copy
    /// the object. For information about downloading objects from Requester
    /// Pays buckets, see Downloading Objects in Requester Pays Buckets in the
    /// Amazon S3 User Guide.
    String? requestPayer,

    /// The server-side encryption (SSE) algorithm used to encrypt the object.
    /// This parameter is required only when the object was created using a
    /// checksum algorithm or if your bucket policy requires the use of SSE-C.
    /// For more information, see Protecting data using SSE-C keys in the Amazon
    /// S3 User Guide.
    String? serverSideEncryptionCustomerAlgorithm,

    /// The server-side encryption (SSE) customer managed key. This parameter is
    /// needed only when the object was created using a checksum algorithm. For
    /// more information, see Protecting data using SSE-C keys in the Amazon S3
    /// User Guide.
    String? serverSideEncryptionCustomerKey,

    /// The MD5 server-side encryption (SSE) customer managed key. This
    /// parameter is needed only when the object was created using a checksum
    /// algorithm. For more information, see Protecting data using SSE-C keys in
    /// the Amazon S3 User Guide.
    String? serverSideEncryptionCustomerKeyMD5,
  });
}
