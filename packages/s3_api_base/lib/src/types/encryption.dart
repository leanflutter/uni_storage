/// Contains the type of server-side encryption used.
class Encryption {
  Encryption({
    required this.encryptionType,
    this.kMSContext,
    this.kMSKeyId,
  });

  /// The server-side encryption algorithm used when storing job results in
  /// Amazon S3 (for example, AES256, aws:kms).
  final String encryptionType;

  /// If the encryption type is aws:kms, this optional value can be used to
  /// specify the encryption context for the restore results.
  final String? kMSContext;

  /// If the encryption type is aws:kms, this optional value specifies the ID of
  /// the symmetric encryption customer managed key to use for encryption of job
  /// results. Amazon S3 only supports symmetric encryption KMS keys. For more
  /// information, see Asymmetric keys in AWS KMS in the AWS Key Management
  /// Service Developer Guide.
  final String? kMSKeyId;
}
