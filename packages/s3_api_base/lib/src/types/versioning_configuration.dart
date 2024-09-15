/// Describes the versioning state of an Amazon S3 bucket. For more information,
/// see PUT Bucket versioning in the Amazon S3 API Reference.
class VersioningConfiguration {
  VersioningConfiguration({
    this.mFADelete,
    this.status,
  });

  /// Specifies whether MFA delete is enabled in the bucket versioning
  /// configuration. This element is only returned if the bucket has been
  /// configured with MFA delete. If the bucket has never been so configured,
  /// this element is not returned.
  final String? mFADelete;

  /// The versioning state of the bucket.
  final String? status;
}
