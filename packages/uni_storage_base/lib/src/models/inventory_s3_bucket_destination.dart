import 'package:uni_storage_base/src/models/inventory_encryption.dart';

/// Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where inventory results are published.
class InventoryS3BucketDestination {
  InventoryS3BucketDestination({
  required  this.bucket,
  required  this.format,
    this.accountId,
    this.encryption,
    this.prefix,
  });

  final String bucket;
  final String format;
  final String? accountId;
  final InventoryEncryption? encryption;
  final String? prefix;
}
