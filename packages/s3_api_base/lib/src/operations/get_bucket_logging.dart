import 'package:s3_api_base/src/types/logging_enabled.dart';

/// Root level tag for the BucketLoggingStatus parameters.
class BucketLoggingStatus {
  BucketLoggingStatus({
    this.loggingEnabled,
  });

  /// Describes where logs are stored and the prefix that Amazon S3 assigns to
  /// all log object keys for a bucket. For more information, see PUT Bucket
  /// logging in the Amazon S3 API Reference.
  final LoggingEnabled? loggingEnabled;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketLoggingOperation {
  Future<dynamic> getBucketLogging({
    /// The bucket name for which to get the logging information.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
