/// Container for S3 Glacier job parameters.
class GlacierJobParameters {
  GlacierJobParameters({
    required this.tier,
  });

  /// Retrieval tier at which the restore will be processed.
  final String tier;
}
