import 'package:s3_api_base/src/types/inventory_configuration.dart';

/// Root level tag for the ListInventoryConfigurationsResult parameters.
class ListInventoryConfigurationsResult {
  ListInventoryConfigurationsResult({
    this.continuationToken,
    this.inventoryConfiguration,
    this.isTruncated,
    this.nextContinuationToken,
  });

  /// If sent in the request, the marker that is used as a starting point for
  /// this inventory configuration list response.
  final String? continuationToken;

  /// The list of inventory configurations for a bucket.
  final List<InventoryConfiguration>? inventoryConfiguration;

  /// Tells whether the returned list of inventory configurations is complete. A
  /// value of true indicates that the list is not complete and the
  /// NextContinuationToken is provided for a subsequent request.
  final bool? isTruncated;

  /// The marker used to continue this inventory configuration listing. Use the
  /// NextContinuationToken from this response to continue the listing in a
  /// subsequent request. The continuation token is an opaque value that Amazon
  /// S3 understands.
  final String? nextContinuationToken;
}

/// This operation is not supported by directory buckets.
abstract mixin class ListBucketInventoryConfigurationsOperation {
  Future<ListInventoryConfigurationsResult> listBucketInventoryConfigurations({
    /// The name of the bucket containing the inventory configurations to
    /// retrieve.
    String bucket,

    /// The marker used to continue an inventory configuration listing that has
    /// been truncated. Use the NextContinuationToken from a previously
    /// truncated list response to continue the listing. The continuation token
    /// is an opaque value that Amazon S3 understands.
    String? continuationToken,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
