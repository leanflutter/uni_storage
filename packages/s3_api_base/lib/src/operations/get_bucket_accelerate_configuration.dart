/// Root level tag for the AccelerateConfiguration parameters.
class AccelerateConfiguration {
  AccelerateConfiguration({
    this.status,
  });

  /// The accelerate configuration of the bucket.
  final String? status;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketAccelerateConfigurationOperation {
  Future<dynamic> getBucketAccelerateConfiguration({
    /// The name of the bucket for which the accelerate configuration is
    /// retrieved.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Confirms that the requester knows that they will be charged for the
    /// request. Bucket owners need not specify this parameter in their
    /// requests. If either the source or destination S3 bucket has Requester
    /// Pays enabled, the requester will pay for corresponding charges to copy
    /// the object. For information about downloading objects from Requester
    /// Pays buckets, see Downloading Objects in Requester Pays Buckets in the
    /// Amazon S3 User Guide.
    String? requestPayer,
  });
}
