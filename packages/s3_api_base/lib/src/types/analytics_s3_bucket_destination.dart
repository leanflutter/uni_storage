/// Contains information about where to publish the analytics results.
class AnalyticsS3BucketDestination {
  AnalyticsS3BucketDestination({
    required this.bucket,
    required this.format,
    this.bucketAccountId,
    this.prefix,
  });

  /// The Amazon Resource Name (ARN) of the bucket to which data is exported.
  final String bucket;

  /// Specifies the file format used when exporting data to Amazon S3.
  final String format;

  /// The account ID that owns the destination S3 bucket. If no account ID is
  /// provided, the owner is not validated before exporting data.
  final String? bucketAccountId;

  /// The prefix to use when exporting data. The prefix is prepended to all
  /// results.
  final String? prefix;
}
