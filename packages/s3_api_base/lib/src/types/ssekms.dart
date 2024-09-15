/// Specifies the use of SSE-KMS to encrypt delivered inventory reports.
class SSEKMS {
  SSEKMS({
    required this.keyId,
  });

  /// Specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
  /// encryption customer managed key to use for encrypting inventory reports.
  final String keyId;
}
