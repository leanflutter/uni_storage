/// Container for the stats details.
class Stats {
  Stats({
    this.bytesProcessed,
    this.bytesReturned,
    this.bytesScanned,
  });

  final int? bytesProcessed;
  final int? bytesReturned;
  final int? bytesScanned;
}
