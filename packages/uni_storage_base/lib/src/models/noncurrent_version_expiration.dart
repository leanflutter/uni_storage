/// Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.
class NoncurrentVersionExpiration {
  NoncurrentVersionExpiration({
    this.newerNoncurrentVersions,
    this.noncurrentDays,
  });

  final int? newerNoncurrentVersions;
  final int? noncurrentDays;
}
