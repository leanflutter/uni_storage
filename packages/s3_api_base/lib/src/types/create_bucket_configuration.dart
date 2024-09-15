import 'package:s3_api_base/src/types/bucket_info.dart';
import 'package:s3_api_base/src/types/location_info.dart';

/// The configuration information for the bucket.
class CreateBucketConfiguration {
  CreateBucketConfiguration({
    this.bucket,
    this.location,
    this.locationConstraint,
  });

  /// Specifies the information about the bucket that will be created.
  final BucketInfo? bucket;

  /// Specifies the location where the bucket will be created.
  final LocationInfo? location;

  /// Specifies the Region where the bucket will be created. You might choose a
  /// Region to optimize latency, minimize costs, or address regulatory
  /// requirements. For example, if you reside in Europe, you will probably find
  /// it advantageous to create buckets in the Europe (Ireland) Region. For more
  /// information, see Accessing a bucket in the Amazon S3 User Guide.
  final String? locationConstraint;
}
