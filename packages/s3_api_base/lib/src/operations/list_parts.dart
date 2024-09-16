import 'package:s3_api_base/src/types/initiator.dart';
import 'package:s3_api_base/src/types/owner.dart';
import 'package:s3_api_base/src/types/part.dart';

/// Root level tag for the ListPartsResult parameters.
class ListPartsResult {
  ListPartsResult({
    this.bucket,
    this.checksumAlgorithm,
    this.initiator,
    this.isTruncated,
    this.key,
    this.maxParts,
    this.nextPartNumberMarker,
    this.owner,
    this.part,
    this.partNumberMarker,
    this.storageClass,
    this.uploadId,
  });

  /// The name of the bucket to which the multipart upload was initiated. Does
  /// not return the access point ARN or access point alias if used.
  final String? bucket;

  /// The algorithm that was used to create a checksum of the object.
  final String? checksumAlgorithm;

  /// Container element that identifies who initiated the multipart upload. If
  /// the initiator is an AWS account, this element provides the same
  /// information as the Owner element. If the initiator is an IAM User, this
  /// element provides the user ARN and display name.
  final Initiator? initiator;

  ///  Indicates whether the returned list of parts is truncated. A true value
  /// indicates that the list was truncated. A list can be truncated if the
  /// number of parts exceeds the limit returned in the MaxParts element.
  final bool? isTruncated;

  /// Object key for which the multipart upload was initiated.
  final String? key;

  /// Maximum number of parts that were allowed in the response.
  final int? maxParts;

  /// When a list is truncated, this element specifies the last part in the
  /// list, as well as the value to use for the part-number-marker request
  /// parameter in a subsequent request.
  final int? nextPartNumberMarker;

  /// Container element that identifies the object owner, after the object is
  /// created. If multipart upload is initiated by an IAM user, this element
  /// provides the parent account ID and display name.
  final Owner? owner;

  /// Container for elements related to a particular part. A response can
  /// contain zero or more Part elements.
  final List<Part>? part;

  /// Specifies the part after which listing should begin. Only parts with
  /// higher part numbers will be listed.
  final int? partNumberMarker;

  /// The class of storage used to store the uploaded object.
  final String? storageClass;

  /// Upload ID identifying the multipart upload whose parts are being listed.
  final String? uploadId;
}

/// Lists the parts that have been uploaded for a specific multipart upload.
abstract mixin class ListPartsOperation {
  Future<ListPartsResult> listParts({
    /// The name of the bucket to which the parts are being uploaded.
    String bucket,

    /// Object key for which the multipart upload was initiated.
    String key,

    /// Sets the maximum number of parts to return.
    String? maxParts,

    /// Specifies the part after which listing should begin. Only parts with
    /// higher part numbers will be listed.
    String? partNumberMarker,

    /// Upload ID identifying the multipart upload whose parts are being listed.
    String uploadId,

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
    /// This parameter is needed only when the object was created using a
    /// checksum algorithm. For more information, see Protecting data using
    /// SSE-C keys in the Amazon S3 User Guide.
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
