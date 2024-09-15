import 'package:s3_api_base/src/types/inventory_encryption.dart';

/// Contains the bucket name, file format, bucket owner (optional), and prefix
/// (optional) where inventory results are published.
class InventoryS3BucketDestination {
  InventoryS3BucketDestination({
    required this.bucket,
    required this.format,
    this.accountId,
    this.encryption,
    this.prefix,
  });

  /// The Amazon Resource Name (ARN) of the bucket where inventory results will
  /// be published.
  final String bucket;

  /// Specifies the output format of the inventory results.
  final String format;

  /// The account ID that owns the destination S3 bucket. If no account ID is
  /// provided, the owner is not validated before exporting data.
  final String? accountId;

  /// Contains the type of server-side encryption used to encrypt the inventory
  /// results.
  final InventoryEncryption? encryption;

  /// The prefix that is prepended to all inventory results.
  final String? prefix;
}
