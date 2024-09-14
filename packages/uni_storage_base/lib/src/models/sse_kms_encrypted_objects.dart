/// A container for filter information for the selection of S3 objects encrypted with AWS KMS.
class SseKmsEncryptedObjects {
  SseKmsEncryptedObjects({
  required  this.status,
  });

  final String status;
}
