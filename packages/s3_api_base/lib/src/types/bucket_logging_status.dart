import 'package:s3_api_base/src/types/logging_enabled.dart';

/// Container for logging status information.
class BucketLoggingStatus {
  BucketLoggingStatus({
    this.loggingEnabled,
  });

  /// Describes where logs are stored and the prefix that Amazon S3 assigns to
  /// all log object keys for a bucket. For more information, see PUT Bucket
  /// logging in the Amazon S3 API Reference.
  final LoggingEnabled? loggingEnabled;
}
