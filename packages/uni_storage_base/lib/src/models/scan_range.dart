/// Specifies the byte range of the object to get the records from. A record is processed when its first byte is contained by the range. This parameter is optional, but when specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the start and end of the range.
class ScanRange {
  ScanRange({
    this.end,
    this.start,
  });

  final int? end;
  final int? start;
}
