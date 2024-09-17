import 'package:s3_api_base/src/types/deleted_object.dart';
import 'package:s3_api_base/src/types/error.dart';

/// Root level tag for the DeleteResult parameters.
class DeleteResult {
  DeleteResult({
    this.deleted,
    this.error,
  });

  /// Container element for a successful delete. It identifies the object that
  /// was successfully deleted.
  final List<DeletedObject>? deleted;

  /// Container for a failed delete action that describes the object that Amazon
  /// S3 attempted to delete and the error it encountered.
  final List<Error>? error;
}

/// This operation enables you to delete multiple objects from a bucket using a
/// single HTTP request. If you know the object keys that you want to delete,
/// then this operation provides a suitable alternative to sending individual
/// delete requests, reducing per-request overhead.
abstract mixin class DeleteObjectsOperation {
  Future<DeleteResult> deleteObjects({
    /// The bucket name containing the objects to delete.
    required String bucket,

    /// Specifies whether you want to delete this object even if it has a
    /// Governance-type Object Lock in place. To use this header, you must have
    /// the s3:BypassGovernanceRetention permission.
    String? bypassGovernanceRetention,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// The concatenation of the authentication device's serial number, a space,
    /// and the value that is displayed on your authentication device. Required
    /// to permanently delete a versioned object if versioning is configured
    /// with MFA delete enabled.
    String? mfa,

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
  });
}
