/// Container for all response elements.
class CopyObjectResult {
  CopyObjectResult({
    this.checksumCRC32,
    this.checksumCRC32C,
    this.checksumSHA1,
    this.checksumSHA256,
    this.eTag,
    this.lastModified,
  });

  /// The base64-encoded, 32-bit CRC-32 checksum of the object. This will only
  /// be present if it was uploaded with the object. For more information, see
  /// Checking object integrity in the Amazon S3 User Guide.
  final String? checksumCRC32;

  /// The base64-encoded, 32-bit CRC-32C checksum of the object. This will only
  /// be present if it was uploaded with the object. For more information, see
  /// Checking object integrity in the Amazon S3 User Guide.
  final String? checksumCRC32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be
  /// present if it was uploaded with the object. For more information, see
  /// Checking object integrity in the Amazon S3 User Guide.
  final String? checksumSHA1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only
  /// be present if it was uploaded with the object. For more information, see
  /// Checking object integrity in the Amazon S3 User Guide.
  final String? checksumSHA256;

  /// Returns the ETag of the new object. The ETag reflects only changes to the
  /// contents of an object, not its metadata.
  final String? eTag;

  /// Creation date of the object.
  final DateTime? lastModified;
}
