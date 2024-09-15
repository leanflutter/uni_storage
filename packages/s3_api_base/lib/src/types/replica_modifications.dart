/// A filter that you can specify for selection for modifications on replicas.
/// Amazon S3 doesn't replicate replica modifications by default. In the latest
/// version of replication configuration (when Filter is specified), you can
/// specify this element and set the status to Enabled to replicate
/// modifications on replicas.
class ReplicaModifications {
  ReplicaModifications({
    required this.status,
  });

  /// Specifies whether Amazon S3 replicates modifications on replicas.
  final String status;
}
