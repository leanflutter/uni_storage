/// Details of the parts that were uploaded.
class CompletedPart {
  CompletedPart({
    this.checksumCRC32,
    this.checksumCRC32C,
    this.checksumSHA1,
    this.checksumSHA256,
    this.eTag,
    this.partNumber,
  });

  final String? checksumCRC32;
  final String? checksumCRC32C;
  final String? checksumSHA1;
  final String? checksumSHA256;
  final String? eTag;
  final int? partNumber;
}
