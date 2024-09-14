import 'package:uni_storage_base/src/models/inventory_s3_bucket_destination.dart';

/// Specifies the inventory configuration for an Amazon S3 bucket.
class InventoryDestination {
  InventoryDestination({
  required  this.s3BucketDestination,
  });

  final InventoryS3BucketDestination s3BucketDestination;
}
