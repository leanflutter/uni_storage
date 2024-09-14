import 'package:uni_storage_base/src/models/inventory_destination.dart';
import 'package:uni_storage_base/src/models/inventory_filter.dart';
import 'package:uni_storage_base/src/models/inventory_schedule.dart';

/// Specifies the inventory configuration for an Amazon S3 bucket. For more information, see GET Bucket inventory in the Amazon S3 API Reference. 
class InventoryConfiguration {
  InventoryConfiguration({
  required  this.destination,
  required  this.id,
  required  this.includedObjectVersions,
  required  this.isEnabled,
  required  this.schedule,
    this.filter,
    this.optionalFields,
  });

  final InventoryDestination destination;
  final String id;
  final String includedObjectVersions;
  final bool isEnabled;
  final InventorySchedule schedule;
  final InventoryFilter? filter;
  final List<String>? optionalFields;
}
