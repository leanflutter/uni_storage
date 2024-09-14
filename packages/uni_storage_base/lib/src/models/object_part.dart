/// A container for elements related to an individual part.
class ObjectPart {
  ObjectPart({
    this.checksumCRC32,
    this.checksumCRC32C,
    this.checksumSHA1,
    this.checksumSHA256,
    this.partNumber,
    this.size,
  });

  final String? checksumCRC32;
  final String? checksumCRC32C;
  final String? checksumSHA1;
  final String? checksumSHA256;
  final int? partNumber;
  final int? size;
}
