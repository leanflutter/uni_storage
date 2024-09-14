/// Amazon S3 keys for log objects are partitioned in the following format:
class PartitionedPrefix {
  PartitionedPrefix({
    this.partitionDateSource,
  });

  final String? partitionDateSource;
}
