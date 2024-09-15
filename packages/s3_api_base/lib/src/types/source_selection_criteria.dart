import 'package:s3_api_base/src/types/replica_modifications.dart';
import 'package:s3_api_base/src/types/sse_kms_encrypted_objects.dart';

/// A container that describes additional filters for identifying the source
/// objects that you want to replicate. You can choose to enable or disable the
/// replication of these objects. Currently, Amazon S3 supports only the filter
/// that you can specify for objects created with server-side encryption using a
/// customer managed key stored in AWS Key Management Service (SSE-KMS).
class SourceSelectionCriteria {
  SourceSelectionCriteria({
    this.replicaModifications,
    this.sseKmsEncryptedObjects,
  });

  /// A filter that you can specify for selections for modifications on
  /// replicas. Amazon S3 doesn't replicate replica modifications by default. In
  /// the latest version of replication configuration (when Filter is
  /// specified), you can specify this element and set the status to Enabled to
  /// replicate modifications on replicas.
  final ReplicaModifications? replicaModifications;

  ///  A container for filter information for the selection of Amazon S3 objects
  /// encrypted with AWS KMS. If you include SourceSelectionCriteria in the
  /// replication configuration, this element is required.
  final SseKmsEncryptedObjects? sseKmsEncryptedObjects;
}
