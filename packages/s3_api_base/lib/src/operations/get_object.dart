/// Retrieves an object from Amazon S3.
abstract mixin class GetObjectOperation {
  Future<void> getObject({
    /// The bucket name containing the object.
    required String bucket,

    /// Return the object only if its entity tag (ETag) is the same as the one
    /// specified in this header; otherwise, return a 412 Precondition Failed
    /// error.
    String? ifMatch,

    /// Return the object only if it has been modified since the specified time;
    /// otherwise, return a 304 Not Modified error.
    String? ifModifiedSince,

    /// Return the object only if its entity tag (ETag) is different from the
    /// one specified in this header; otherwise, return a 304 Not Modified
    /// error.
    String? ifNoneMatch,

    /// Return the object only if it has not been modified since the specified
    /// time; otherwise, return a 412 Precondition Failed error.
    String? ifUnmodifiedSince,

    /// Key of the object to get.
    required String key,

    /// Part number of the object being read. This is a positive integer between
    /// 1 and 10,000. Effectively performs a 'ranged' GET request for the part
    /// specified. Useful for downloading just a part of an object.
    String? partNumber,

    /// Downloads the specified byte range of an object. For more information
    /// about the HTTP Range header, see
    /// https://www.rfc-editor.org/rfc/rfc9110.html#name-range.
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

    /// To retrieve the checksum, this mode must be enabled.
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

    /// Specifies the algorithm to use when decrypting the object (for example,
    /// AES256).
    String? serverSideEncryptionCustomerAlgorithm,

    /// Specifies the customer-provided encryption key that you originally
    /// provided for Amazon S3 to encrypt the data before storing it. This value
    /// is used to decrypt the object when recovering it and must match the one
    /// used when storing the data. The key must be appropriate for use with the
    /// algorithm specified in the
    /// x-amz-server-side-encryption-customer-algorithm header.
    String? serverSideEncryptionCustomerKey,

    /// Specifies the 128-bit MD5 digest of the customer-provided encryption key
    /// according to RFC 1321. Amazon S3 uses this header for a message
    /// integrity check to ensure that the encryption key was transmitted
    /// without error.
    String? serverSideEncryptionCustomerKeyMD5,
  });
}
