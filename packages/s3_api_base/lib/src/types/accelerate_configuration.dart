/// Configures the transfer acceleration state for an Amazon S3 bucket. For more
/// information, see Amazon S3 Transfer Acceleration in the Amazon S3 User
/// Guide.
class AccelerateConfiguration {
  AccelerateConfiguration({
    this.status,
  });

  /// Specifies the transfer acceleration status of the bucket.
  final String? status;
}
