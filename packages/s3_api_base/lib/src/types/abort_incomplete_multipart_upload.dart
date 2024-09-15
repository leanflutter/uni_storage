/// Specifies the days since the initiation of an incomplete multipart upload
/// that Amazon S3 will wait before permanently removing all parts of the
/// upload. For more information, see Aborting Incomplete Multipart Uploads
/// Using a Bucket Lifecycle Configuration in the Amazon S3 User Guide.
class AbortIncompleteMultipartUpload {
  AbortIncompleteMultipartUpload({
    this.daysAfterInitiation,
  });

  /// Specifies the number of days after which Amazon S3 aborts an incomplete
  /// multipart upload.
  final int? daysAfterInitiation;
}
