/// Root level tag for the LocationConstraint parameters.
class LocationConstraint {
  LocationConstraint({
    this.locationConstraint,
  });

  /// Specifies the Region where the bucket resides. For a list of all the
  /// Amazon S3 supported location constraints by Region, see Regions and
  /// Endpoints. Buckets in Region us-east-1 have a LocationConstraint of null.
  final String? locationConstraint;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketLocationOperation {
  Future<LocationConstraint> getBucketLocation({
    /// The name of the bucket for which to get the location.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
