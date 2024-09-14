/// Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated objects.
class EncryptionConfiguration {
  EncryptionConfiguration({
    this.replicaKmsKeyID,
  });

  final String? replicaKmsKeyID;
}
