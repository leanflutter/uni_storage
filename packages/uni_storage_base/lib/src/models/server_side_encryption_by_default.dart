/// Describes the default server-side encryption to apply to new objects in the bucket. If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied. If you don't specify a customer managed key at configuration, Amazon S3 automatically creates an AWS KMS key in your AWS account the first time that you add an object encrypted with SSE-KMS to a bucket. By default, Amazon S3 uses this KMS key for SSE-KMS. For more information, see PUT Bucket encryption in the Amazon S3 API Reference.
class ServerSideEncryptionByDefault {
  ServerSideEncryptionByDefault({
  required  this.sSEAlgorithm,
    this.kMSMasterKeyID,
  });

  final String sSEAlgorithm;
  final String? kMSMasterKeyID;
}
