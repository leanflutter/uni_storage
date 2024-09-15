/// The S3 Intelligent-Tiering storage class is designed to optimize storage
/// costs by automatically moving data to the most cost-effective storage access
/// tier, without additional operational overhead.
class Tiering {
  Tiering({
    required this.accessTier,
    required this.days,
  });

  /// S3 Intelligent-Tiering access tier. See Storage class for automatically
  /// optimizing frequently and infrequently accessed objects for a list of
  /// access tiers in the S3 Intelligent-Tiering storage class.
  final String accessTier;

  /// The number of consecutive days of no access after which an object will be
  /// eligible to be transitioned to the corresponding tier. The minimum number
  /// of days specified for Archive Access tier must be at least 90 days and
  /// Deep Archive Access tier must be at least 180 days. The maximum can be up
  /// to 2 years (730 days).
  final int days;
}
