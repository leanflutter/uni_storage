/// Specifies the use of SSE-KMS to encrypt delivered inventory reports.
class SSEKMS {
  SSEKMS({
  required  this.keyId,
  });

  final String keyId;
}
