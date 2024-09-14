import 'package:uni_storage_base/src/models/analytics_s3_bucket_destination.dart';

/// Where to publish the analytics results.
class AnalyticsExportDestination {
  AnalyticsExportDestination({
  required  this.s3BucketDestination,
  });

  final AnalyticsS3BucketDestination s3BucketDestination;
}
