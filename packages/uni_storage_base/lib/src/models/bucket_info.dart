/// Specifies the information about the bucket that will be created. For more information about directory buckets, see Directory buckets in the Amazon S3 User Guide.
class BucketInfo {
  BucketInfo({
    this.dataRedundancy,
    this.type,
  });

  final String? dataRedundancy;
  final String? type;
}
