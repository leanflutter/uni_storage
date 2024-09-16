/// Root level tag for the VersioningConfiguration parameters.
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

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketVersioningOperation {
  Future<VersioningConfiguration> getBucketVersioning({
    /// The name of the bucket for which to get the versioning information.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
