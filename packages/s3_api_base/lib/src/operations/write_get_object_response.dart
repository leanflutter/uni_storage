/// This operation is not supported by directory buckets.
abstract mixin class WriteGetObjectResponseOperation {
  Future<dynamic> writeGetObjectResponse({
    /// The size of the content body in bytes.
    String? contentLength,

    /// A string that uniquely identifies an error condition. Returned in the
    /// <Code> tag of the error XML response for a corresponding GetObject call.
    /// Cannot be used with a successful StatusCode header or when the
    /// transformed object is provided in the body. All error codes from S3 are
    /// sentence-cased. The regular expression (regex) value is
    /// "^[A-Z][a-zA-Z]+$".
    String? fwdErrorCode,

    /// Contains a generic description of the error condition. Returned in the
    /// <Message> tag of the error XML response for a corresponding GetObject
    /// call. Cannot be used with a successful StatusCode header or when the
    /// transformed object is provided in body.
    String? fwdErrorMessage,

    /// Indicates that a range of bytes was specified.
    String? fwdHeaderAcceptRanges,

    /// Specifies caching behavior along the request/reply chain.
    String? fwdHeaderCacheControl,

    /// Specifies presentational information for the object.
    String? fwdHeaderContentDisposition,

    /// Specifies what content encodings have been applied to the object and
    /// thus what decoding mechanisms must be applied to obtain the media-type
    /// referenced by the Content-Type header field.
    String? fwdHeaderContentEncoding,

    /// The language the content is in.
    String? fwdHeaderContentLanguage,

    /// The portion of the object returned in the response.
    String? fwdHeaderContentRange,

    /// A standard MIME type describing the format of the object data.
    String? fwdHeaderContentType,

    /// An opaque identifier assigned by a web server to a specific version of a
    /// resource found at a URL.
    String? fwdHeaderETag,

    /// The date and time at which the object is no longer cacheable.
    String? fwdHeaderExpires,

    /// The date and time that the object was last modified.
    String? fwdHeaderLastModified,

    /// This header can be used as a data integrity check to verify that the
    /// data received is the same data that was originally sent. This specifies
    /// the base64-encoded, 32-bit CRC-32 checksum of the object returned by the
    /// Object Lambda function. This may not match the checksum for the object
    /// stored in Amazon S3. Amazon S3 will perform validation of the checksum
    /// values only when the original GetObject request required checksum
    /// validation. For more information about checksums, see Checking object
    /// integrity in the Amazon S3 User Guide.
    String? fwdHeaderChecksumCrc32,

    /// This header can be used as a data integrity check to verify that the
    /// data received is the same data that was originally sent. This specifies
    /// the base64-encoded, 32-bit CRC-32C checksum of the object returned by
    /// the Object Lambda function. This may not match the checksum for the
    /// object stored in Amazon S3. Amazon S3 will perform validation of the
    /// checksum values only when the original GetObject request required
    /// checksum validation. For more information about checksums, see Checking
    /// object integrity in the Amazon S3 User Guide.
    String? fwdHeaderChecksumCrc32c,

    /// This header can be used as a data integrity check to verify that the
    /// data received is the same data that was originally sent. This specifies
    /// the base64-encoded, 160-bit SHA-1 digest of the object returned by the
    /// Object Lambda function. This may not match the checksum for the object
    /// stored in Amazon S3. Amazon S3 will perform validation of the checksum
    /// values only when the original GetObject request required checksum
    /// validation. For more information about checksums, see Checking object
    /// integrity in the Amazon S3 User Guide.
    String? fwdHeaderChecksumSha1,

    /// This header can be used as a data integrity check to verify that the
    /// data received is the same data that was originally sent. This specifies
    /// the base64-encoded, 256-bit SHA-256 digest of the object returned by the
    /// Object Lambda function. This may not match the checksum for the object
    /// stored in Amazon S3. Amazon S3 will perform validation of the checksum
    /// values only when the original GetObject request required checksum
    /// validation. For more information about checksums, see Checking object
    /// integrity in the Amazon S3 User Guide.
    String? fwdHeaderChecksumSha256,

    /// Specifies whether an object stored in Amazon S3 is (true) or is not
    /// (false) a delete marker.
    String? fwdHeaderDeleteMarker,

    /// If the object expiration is configured (see PUT Bucket lifecycle), the
    /// response includes this header. It includes the expiry-date and rule-id
    /// key-value pairs that provide the object expiration information. The
    /// value of the rule-id is URL-encoded.
    String? fwdHeaderExpiration,

    /// Set to the number of metadata entries not returned in x-amz-meta
    /// headers. This can happen if you create metadata using an API like SOAP
    /// that supports more flexible metadata than the REST API. For example,
    /// using SOAP, you can create metadata whose values are not legal HTTP
    /// headers.
    String? fwdHeaderMissingMeta,

    /// The count of parts this object has.
    String? fwdHeaderMpPartsCount,

    /// Indicates whether an object stored in Amazon S3 has an active legal
    /// hold.
    String? fwdHeaderObjectLockLegalHold,

    /// Indicates whether an object stored in Amazon S3 has Object Lock enabled.
    /// For more information about S3 Object Lock, see Object Lock.
    String? fwdHeaderObjectLockMode,

    /// The date and time when Object Lock is configured to expire.
    String? fwdHeaderObjectLockRetainUntilDate,

    /// Indicates if request involves bucket that is either a source or
    /// destination in a Replication rule. For more information about S3
    /// Replication, see Replication.
    String? fwdHeaderReplicationStatus,

    /// If present, indicates that the requester was successfully charged for
    /// the request.
    String? fwdHeaderRequestCharged,

    /// Provides information about object restoration operation and expiration
    /// time of the restored object copy.
    String? fwdHeaderRestore,

    ///  The server-side encryption algorithm used when storing requested object
    /// in Amazon S3 (for example, AES256, aws:kms).
    String? fwdHeaderServerSideEncryption,

    ///  If present, specifies the ID (Key ID, Key ARN, or Key Alias) of the AWS
    /// Key Management Service (AWS KMS) symmetric encryption customer managed
    /// key that was used for stored in Amazon S3 object.
    String? fwdHeaderServerSideEncryptionAwsKmsKeyId,

    ///  Indicates whether the object stored in Amazon S3 uses an S3 bucket key
    /// for server-side encryption with AWS KMS (SSE-KMS).
    String? fwdHeaderServerSideEncryptionBucketKeyEnabled,

    /// Encryption algorithm used if server-side encryption with a
    /// customer-provided encryption key was specified for object stored in
    /// Amazon S3.
    String? fwdHeaderServerSideEncryptionCustomerAlgorithm,

    ///  128-bit MD5 digest of customer-provided encryption key used in Amazon
    /// S3 to encrypt data stored in S3. For more information, see Protecting
    /// data using server-side encryption with customer-provided encryption keys
    /// (SSE-C).
    String? fwdHeaderServerSideEncryptionCustomerKeyMD5,

    /// Provides storage class information of the object. Amazon S3 returns this
    /// header for all objects except for S3 Standard storage class objects.
    String? fwdHeaderStorageClass,

    /// The number of tags, if any, on the object.
    String? fwdHeaderTaggingCount,

    /// An ID used to reference a specific version of the object.
    String? fwdHeaderVersionId,

    /// The integer status code for an HTTP response of a corresponding
    /// GetObject request. The following is a list of status codes.
    String? fwdStatus,

    /// Route prefix to the HTTP URL generated.
    String requestRoute,

    /// A single use encrypted token that maps WriteGetObjectResponse to the end
    /// user GetObject request.
    String requestToken,
  });
}
