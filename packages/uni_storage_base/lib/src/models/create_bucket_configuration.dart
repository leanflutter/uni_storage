import 'package:uni_storage_base/src/models/bucket_info.dart';
import 'package:uni_storage_base/src/models/location_info.dart';

/// The configuration information for the bucket.
class CreateBucketConfiguration {
  CreateBucketConfiguration({
    this.bucket,
    this.location,
    this.locationConstraint,
  });

  final BucketInfo? bucket;
  final LocationInfo? location;
  final String? locationConstraint;
}
