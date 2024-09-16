/// Uploads a part in a multipart upload.
abstract mixin class UploadPartOperation {
  Future<void> uploadPart({
    /// The name of the bucket to which the multipart upload was initiated.
    String bucket,

    /// Size of the body in bytes. This parameter is useful when the size of the
    /// body cannot be determined automatically.
    String? contentLength,

    /// The base64-encoded 128-bit MD5 digest of the part data. This parameter
    /// is auto-populated when using the command from the CLI. This parameter is
    /// required if object lock parameters are specified.
    String? contentMD5,

    /// Object key for which the multipart upload was initiated.
    String key,

    /// Part number of part being uploaded. This is a positive integer between 1
    /// and 10,000.
    String partNumber,

    /// Upload ID identifying the multipart upload whose part is being uploaded.
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

    /// Indicates the algorithm used to create the checksum for the object when
    /// you use the SDK. This header will not provide any additional
    /// functionality if you don't use the SDK. When you send this header, there
    /// must be a corresponding x-amz-checksum or x-amz-trailer header sent.
    /// Otherwise, Amazon S3 fails the request with the HTTP status code 400 Bad
    /// Request. For more information, see Checking object integrity in the
    /// Amazon S3 User Guide.
    String? sdkChecksumAlgorithm,

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
  });
}
