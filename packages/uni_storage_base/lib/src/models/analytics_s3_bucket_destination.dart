/// Contains information about where to publish the analytics results.
class AnalyticsS3BucketDestination {
  AnalyticsS3BucketDestination({
  required  this.bucket,
  required  this.format,
    this.bucketAccountId,
    this.prefix,
  });

  final String bucket;
  final String format;
  final String? bucketAccountId;
  final String? prefix;
}
