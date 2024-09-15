/// A container for filter information for the selection of S3 objects encrypted
/// with AWS KMS.
class SseKmsEncryptedObjects {
  SseKmsEncryptedObjects({
    required this.status,
  });

  /// Specifies whether Amazon S3 replicates objects created with server-side
  /// encryption using an AWS KMS key stored in AWS Key Management Service.
  final String status;
}
