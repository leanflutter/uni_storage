/// Specifies the byte range of the object to get the records from. A record is
/// processed when its first byte is contained by the range. This parameter is
/// optional, but when specified, it must not be empty. See RFC 2616, Section
/// 14.35.1 about how to specify the start and end of the range.
class ScanRange {
  ScanRange({
    this.end,
    this.start,
  });

  /// Specifies the end of the byte range. This parameter is optional. Valid
  /// values: non-negative integers. The default value is one less than the size
  /// of the object being queried. If only the End parameter is supplied, it is
  /// interpreted to mean scan the last N bytes of the file. For example,
  /// <scanrange><end>50</end></scanrange> means scan the last 50 bytes.
  final int? end;

  /// Specifies the start of the byte range. This parameter is optional. Valid
  /// values: non-negative integers. The default value is 0. If only start is
  /// supplied, it means scan from that point to the end of the file. For
  /// example, <scanrange><start>50</start></scanrange> means scan from byte 50
  /// until the end of the file.
  final int? start;
}
