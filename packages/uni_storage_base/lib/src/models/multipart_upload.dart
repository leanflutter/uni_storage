import 'package:uni_storage_base/src/models/initiator.dart';
import 'package:uni_storage_base/src/models/owner.dart';

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

  final String? checksumAlgorithm;
  final DateTime? initiated;
  final Initiator? initiator;
  final String? key;
  final Owner? owner;
  final String? storageClass;
  final String? uploadId;
}
