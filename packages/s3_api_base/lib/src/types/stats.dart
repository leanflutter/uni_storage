/// Container for the stats details.
class Stats {
  Stats({
    this.bytesProcessed,
    this.bytesReturned,
    this.bytesScanned,
  });

  /// The total number of uncompressed object bytes processed.
  final int? bytesProcessed;

  /// The total number of bytes of records payload data returned.
  final int? bytesReturned;

  /// The total number of object bytes scanned.
  final int? bytesScanned;
}
