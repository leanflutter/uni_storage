/// Contains all the possible checksum or digest values for an object.
class Checksum {
  Checksum({
    this.checksumCRC32,
    this.checksumCRC32C,
    this.checksumSHA1,
    this.checksumSHA256,
  });

  final String? checksumCRC32;
  final String? checksumCRC32C;
  final String? checksumSHA1;
  final String? checksumSHA256;
}
