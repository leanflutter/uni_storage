/// Optional configuration to replicate existing source bucket objects.
class ExistingObjectReplication {
  ExistingObjectReplication({
    required this.status,
  });

  /// Specifies whether Amazon S3 replicates existing source bucket objects.
  final String status;
}
