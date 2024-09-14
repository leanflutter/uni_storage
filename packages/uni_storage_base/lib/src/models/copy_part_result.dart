/// Container for all response elements.
class CopyPartResult {
  CopyPartResult({
    this.checksumCRC32,
    this.checksumCRC32C,
    this.checksumSHA1,
    this.checksumSHA256,
    this.eTag,
    this.lastModified,
  });

  final String? checksumCRC32;
  final String? checksumCRC32C;
  final String? checksumSHA1;
  final String? checksumSHA256;
  final String? eTag;
  final DateTime? lastModified;
}
