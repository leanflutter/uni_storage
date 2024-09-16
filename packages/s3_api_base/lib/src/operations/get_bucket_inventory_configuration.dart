import 'package:s3_api_base/src/types/inventory_configuration.dart';

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketInventoryConfigurationOperation {
  Future<InventoryConfiguration> getBucketInventoryConfiguration({
    /// The name of the bucket containing the inventory configuration to
    /// retrieve.
    String bucket,

    /// The ID used to identify the inventory configuration.
    String id,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
