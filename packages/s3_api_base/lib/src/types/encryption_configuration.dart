/// Specifies encryption-related information for an Amazon S3 bucket that is a
/// destination for replicated objects.
class EncryptionConfiguration {
  EncryptionConfiguration({
    this.replicaKmsKeyID,
  });

  /// Specifies the ID (Key ARN or Alias ARN) of the customer managed AWS KMS
  /// key stored in AWS Key Management Service (KMS) for the destination bucket.
  /// Amazon S3 uses this key to encrypt replica objects. Amazon S3 only
  /// supports symmetric encryption KMS keys. For more information, see
  /// Asymmetric keys in AWS KMS in the AWS Key Management Service Developer
  /// Guide.
  final String? replicaKmsKeyID;
}
