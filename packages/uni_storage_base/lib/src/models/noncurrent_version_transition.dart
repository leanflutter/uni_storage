/// Container for the transition rule that describes when noncurrent objects transition to the STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER_IR, GLACIER, or DEEP_ARCHIVE storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to the STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER_IR, GLACIER, or DEEP_ARCHIVE storage class at a specific period in the object's lifetime.
class NoncurrentVersionTransition {
  NoncurrentVersionTransition({
    this.newerNoncurrentVersions,
    this.noncurrentDays,
    this.storageClass,
  });

  final int? newerNoncurrentVersions;
  final int? noncurrentDays;
  final String? storageClass;
}
