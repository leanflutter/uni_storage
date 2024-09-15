import 'package:s3_api_base/src/types/initiator.dart';
import 'package:s3_api_base/src/types/owner.dart';

/// Container for the MultipartUpload for the Amazon S3 object.
class MultipartUpload {
  MultipartUpload({
    this.checksumAlgorithm,
    this.initiated,
    this.initiator,
    this.key,
    this.owner,
    this.storageClass,
    this.uploadId,
  });

  /// The algorithm that was used to create a checksum of the object.
  final String? checksumAlgorithm;

  /// Date and time at which the multipart upload was initiated.
  final DateTime? initiated;

  /// Identifies who initiated the multipart upload.
  final Initiator? initiator;

  /// Key of the object for which the multipart upload was initiated.
  final String? key;

  /// Specifies the owner of the object that is part of the multipart upload.
  final Owner? owner;

  /// The class of storage used to store the object.
  final String? storageClass;

  /// Upload ID that identifies the multipart upload.
  final String? uploadId;
}
