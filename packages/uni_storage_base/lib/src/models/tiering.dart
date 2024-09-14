/// The S3 Intelligent-Tiering storage class is designed to optimize storage costs by automatically moving data to the most cost-effective storage access tier, without additional operational overhead.
class Tiering {
  Tiering({
  required  this.accessTier,
  required  this.days,
  });

  final String accessTier;
  final int days;
}
