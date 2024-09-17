import 'package:s3_api_base/src/types/checksum.dart';
import 'package:s3_api_base/src/types/get_object_attributes_parts.dart';

/// Root level tag for the GetObjectAttributesOutput parameters.
class GetObjectAttributesOutput {
  GetObjectAttributesOutput({
    this.checksum,
    this.eTag,
    this.objectParts,
    this.objectSize,
    this.storageClass,
  });

  /// The checksum or digest of the object.
  final Checksum? checksum;

  /// An ETag is an opaque identifier assigned by a web server to a specific
  /// version of a resource found at a URL.
  final String? eTag;

  /// A collection of parts associated with a multipart upload.
  final GetObjectAttributesParts? objectParts;

  /// The size of the object in bytes.
  final int? objectSize;

  /// Provides the storage class information of the object. Amazon S3 returns
  /// this header for all objects except for S3 Standard storage class objects.
  final String? storageClass;
}

/// Retrieves all the metadata from an object without returning the object
/// itself. This operation is useful if you're interested only in an object's
/// metadata.
abstract mixin class GetObjectAttributesOperation {
  Future<GetObjectAttributesOutput> getObjectAttributes({
    /// The name of the bucket that contains the object.
    required String bucket,

    /// The object key.
    required String key,

    /// The version ID used to reference a specific version of the object.
    String? versionId,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Sets the maximum number of parts to return.
    String? maxParts,

    /// Specifies the fields at the root level that you want returned in the
    /// response. Fields that you do not specify are not returned.
    required String objectAttributes,

    /// Specifies the part after which listing should begin. Only parts with
    /// higher part numbers will be listed.
    String? partNumberMarker,

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
