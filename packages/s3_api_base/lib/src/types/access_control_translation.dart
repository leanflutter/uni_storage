/// A container for information about access control for replicas.
class AccessControlTranslation {
  AccessControlTranslation({
    required this.owner,
  });

  /// Specifies the replica ownership. For default and valid values, see PUT
  /// bucket replication in the Amazon S3 API Reference.
  final String owner;
}
