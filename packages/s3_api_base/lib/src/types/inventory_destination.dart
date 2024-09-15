import 'package:s3_api_base/src/types/inventory_s3_bucket_destination.dart';

/// Specifies the inventory configuration for an Amazon S3 bucket.
class InventoryDestination {
  InventoryDestination({
    required this.s3BucketDestination,
  });

  /// Contains the bucket name, file format, bucket owner (optional), and prefix
  /// (optional) where inventory results are published.
  final InventoryS3BucketDestination s3BucketDestination;
}
