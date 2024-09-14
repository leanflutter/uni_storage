/// This data type contains information about progress of an operation.
class Progress {
  Progress({
    this.bytesProcessed,
    this.bytesReturned,
    this.bytesScanned,
  });

  final int? bytesProcessed;
  final int? bytesReturned;
  final int? bytesScanned;
}
