import 'package:s3_api_base/src/types/inventory_destination.dart';
import 'package:s3_api_base/src/types/inventory_filter.dart';
import 'package:s3_api_base/src/types/inventory_schedule.dart';

/// Root level tag for the InventoryConfiguration parameters.
class InventoryConfiguration {
  InventoryConfiguration({
    this.destination,
    this.filter,
    this.id,
    this.includedObjectVersions,
    this.isEnabled,
    this.optionalFields,
    this.schedule,
  });

  /// Contains information about where to publish the inventory results.
  final InventoryDestination? destination;

  /// Specifies an inventory filter. The inventory only includes objects that
  /// meet the filter's criteria.
  final InventoryFilter? filter;

  /// The ID used to identify the inventory configuration.
  final String? id;

  /// Object versions to include in the inventory list. If set to All, the list
  /// includes all the object versions, which adds the version-related fields
  /// VersionId, IsLatest, and DeleteMarker to the list. If set to Current, the
  /// list does not contain these version-related fields.
  final String? includedObjectVersions;

  /// Specifies whether the inventory is enabled or disabled. If set to True, an
  /// inventory list is generated. If set to False, no inventory list is
  /// generated.
  final bool? isEnabled;

  /// Contains the optional fields that are included in the inventory results.
  final List<String>? optionalFields;

  /// Specifies the schedule for generating inventory results.
  final InventorySchedule? schedule;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketInventoryConfigurationOperation {
  Future<dynamic> getBucketInventoryConfiguration({
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
