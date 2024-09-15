/// Specifies the schedule for generating inventory results.
class InventorySchedule {
  InventorySchedule({
    required this.frequency,
  });

  /// Specifies how frequently inventory results are produced.
  final String frequency;
}
