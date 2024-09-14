import 'package:uni_storage_base/src/models/replica_modifications.dart';
import 'package:uni_storage_base/src/models/sse_kms_encrypted_objects.dart';

/// A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer managed key stored in AWS Key Management Service (SSE-KMS).
class SourceSelectionCriteria {
  SourceSelectionCriteria({
    this.replicaModifications,
    this.sseKmsEncryptedObjects,
  });

  final ReplicaModifications? replicaModifications;
  final SseKmsEncryptedObjects? sseKmsEncryptedObjects;
}
