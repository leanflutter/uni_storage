/// Amazon S3 keys for log objects are partitioned in the following format:
class PartitionedPrefix {
  PartitionedPrefix({
    this.partitionDateSource,
  });

  /// Specifies the partition date source for the partitioned prefix.
  /// PartitionDateSource can be EventTime or DeliveryTime.
  final String? partitionDateSource;
}
