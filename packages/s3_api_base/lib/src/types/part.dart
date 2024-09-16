/// Container for elements related to a part.
class Part {
  Part({
    this.checksumCRC32,
    this.checksumCRC32C,
    this.checksumSHA1,
    this.checksumSHA256,
    this.eTag,
    this.lastModified,
    this.partNumber,
    this.size,
  });

  /// This header can be used as a data integrity check to verify that the data
  /// received is the same data that was originally sent. This header specifies
  /// the base64-encoded, 32-bit CRC-32 checksum of the object. For more
  /// information, see Checking object integrity in the Amazon S3 User Guide.
  final String? checksumCRC32;

  /// The base64-encoded, 32-bit CRC-32C checksum of the object. This will only
  /// be present if it was uploaded with the object. When you use an API
  /// operation on an object that was uploaded using multipart uploads, this
  /// value may not be a direct checksum value of the full object. Instead, it's
  /// a calculation based on the checksum values of each individual part. For
  /// more information about how checksums are calculated with multipart
  /// uploads, see Checking object integrity in the Amazon S3 User Guide.
  final String? checksumCRC32C;

  /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be
  /// present if it was uploaded with the object. When you use the API operation
  /// on an object that was uploaded using multipart uploads, this value may not
  /// be a direct checksum value of the full object. Instead, it's a calculation
  /// based on the checksum values of each individual part. For more information
  /// about how checksums are calculated with multipart uploads, see Checking
  /// object integrity in the Amazon S3 User Guide.
  final String? checksumSHA1;

  /// This header can be used as a data integrity check to verify that the data
  /// received is the same data that was originally sent. This header specifies
  /// the base64-encoded, 256-bit SHA-256 digest of the object. For more
  /// information, see Checking object integrity in the Amazon S3 User Guide.
  final String? checksumSHA256;

  /// Entity tag returned when the part was uploaded.
  final String? eTag;

  /// Date and time at which the part was uploaded.
  final DateTime? lastModified;

  /// Part number identifying the part. This is a positive integer between 1 and
  /// 10,000.
  final int? partNumber;

  /// Size in bytes of the uploaded part data.
  final int? size;
}