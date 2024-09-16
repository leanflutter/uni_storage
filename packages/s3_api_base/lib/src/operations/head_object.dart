/// The HEAD operation retrieves metadata from an object without returning the
/// object itself. This operation is useful if you're interested only in an
/// object's metadata.
abstract mixin class HeadObjectOperation {
  Future<void> headObject({
    /// The name of the bucket that contains the object.
    String bucket,

    /// Return the object only if its entity tag (ETag) is the same as the one
    /// specified; otherwise, return a 412 (precondition failed) error.
    String? ifMatch,

    /// Return the object only if it has been modified since the specified time;
    /// otherwise, return a 304 (not modified) error.
    String? ifModifiedSince,

    /// Return the object only if its entity tag (ETag) is different from the
    /// one specified; otherwise, return a 304 (not modified) error.
    String? ifNoneMatch,

    /// Return the object only if it has not been modified since the specified
    /// time; otherwise, return a 412 (precondition failed) error.
    String? ifUnmodifiedSince,

    /// The object key.
    String key,

    /// Part number of the object being read. This is a positive integer between
    /// 1 and 10,000. Effectively performs a 'ranged' HEAD request for the part
    /// specified. Useful querying about the size of the part and the number of
    /// parts in this object.
    String? partNumber,

    /// HeadObject returns only the metadata for an object. If the Range is
    /// satisfiable, only the ContentLength is affected in the response. If the
    /// Range is not satisfiable, S3 returns a 416 - Requested Range Not
    /// Satisfiable error.
    String? range,

    /// Sets the Cache-Control header of the response.
    String? responseCacheControl,

    /// Sets the Content-Disposition header of the response.
    String? responseContentDisposition,

    /// Sets the Content-Encoding header of the response.
    String? responseContentEncoding,

    /// Sets the Content-Language header of the response.
    String? responseContentLanguage,

    /// Sets the Content-Type header of the response.
    String? responseContentType,

    /// Sets the Expires header of the response.
    String? responseExpires,

    /// Version ID used to reference a specific version of the object.
    String? versionId,

    /// To retrieve the checksum, this parameter must be enabled.
    String? checksumMode,

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
  });
}
