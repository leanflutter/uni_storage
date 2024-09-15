/// This data type contains information about progress of an operation.
class Progress {
  Progress({
    this.bytesProcessed,
    this.bytesReturned,
    this.bytesScanned,
  });

  /// The current number of uncompressed object bytes processed.
  final int? bytesProcessed;

  /// The current number of bytes of records payload data returned.
  final int? bytesReturned;

  /// The current number of object bytes scanned.
  final int? bytesScanned;
}
