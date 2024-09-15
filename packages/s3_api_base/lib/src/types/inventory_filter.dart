/// Specifies an inventory filter. The inventory only includes objects that meet
/// the filter's criteria.
class InventoryFilter {
  InventoryFilter({
    required this.prefix,
  });

  /// The prefix that an object must have to be included in the inventory
  /// results.
  final String prefix;
}
