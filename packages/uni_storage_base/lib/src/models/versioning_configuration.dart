/// Describes the versioning state of an Amazon S3 bucket. For more information, see PUT Bucket versioning in the Amazon S3 API Reference.
class VersioningConfiguration {
  VersioningConfiguration({
    this.mFADelete,
    this.status,
  });

  final String? mFADelete;
  final String? status;
}
