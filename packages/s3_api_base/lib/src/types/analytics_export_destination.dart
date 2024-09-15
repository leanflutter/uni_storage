import 'package:s3_api_base/src/types/analytics_s3_bucket_destination.dart';

/// Where to publish the analytics results.
class AnalyticsExportDestination {
  AnalyticsExportDestination({
    required this.s3BucketDestination,
  });

  /// A destination signifying output to an S3 bucket.
  final AnalyticsS3BucketDestination s3BucketDestination;
}
