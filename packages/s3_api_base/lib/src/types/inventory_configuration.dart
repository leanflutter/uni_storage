import 'package:s3_api_base/src/types/inventory_destination.dart';
import 'package:s3_api_base/src/types/inventory_filter.dart';
import 'package:s3_api_base/src/types/inventory_schedule.dart';

/// Specifies the inventory configuration for an Amazon S3 bucket. For more
/// information, see GET Bucket inventory in the Amazon S3 API Reference.
class InventoryConfiguration {
  InventoryConfiguration({
    required this.destination,
    required this.id,
    required this.includedObjectVersions,
    required this.isEnabled,
    required this.schedule,
    this.filter,
    this.optionalFields,
  });

  /// Contains information about where to publish the inventory results.
  final InventoryDestination destination;

  /// The ID used to identify the inventory configuration.
  final String id;

  /// Object versions to include in the inventory list. If set to All, the list
  /// includes all the object versions, which adds the version-related fields
  /// VersionId, IsLatest, and DeleteMarker to the list. If set to Current, the
  /// list does not contain these version-related fields.
  final String includedObjectVersions;

  /// Specifies whether the inventory is enabled or disabled. If set to True, an
  /// inventory list is generated. If set to False, no inventory list is
  /// generated.
  final bool isEnabled;

  /// Specifies the schedule for generating inventory results.
  final InventorySchedule schedule;

  /// Specifies an inventory filter. The inventory only includes objects that
  /// meet the filter's criteria.
  final InventoryFilter? filter;

  /// Contains the optional fields that are included in the inventory results.
  final List<String>? optionalFields;
}
