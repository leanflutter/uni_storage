/// Specifies the information about the bucket that will be created. For more
/// information about directory buckets, see Directory buckets in the Amazon S3
/// User Guide.
class BucketInfo {
  BucketInfo({
    this.dataRedundancy,
    this.type,
  });

  /// The number of Availability Zone that's used for redundancy for the bucket.
  final String? dataRedundancy;

  /// The type of bucket.
  final String? type;
}
