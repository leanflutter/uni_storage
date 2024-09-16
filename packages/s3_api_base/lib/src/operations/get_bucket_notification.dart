import 'package:s3_api_base/src/types/cloud_function_configuration.dart';
import 'package:s3_api_base/src/types/queue_configuration_deprecated.dart';
import 'package:s3_api_base/src/types/topic_configuration_deprecated.dart';

/// Root level tag for the NotificationConfiguration parameters.
class NotificationConfiguration {
  NotificationConfiguration({
    this.cloudFunctionConfiguration,
    this.queueConfiguration,
    this.topicConfiguration,
  });

  /// Container for specifying the AWS Lambda notification configuration.
  final CloudFunctionConfiguration? cloudFunctionConfiguration;

  /// This data type is deprecated. This data type specifies the configuration
  /// for publishing messages to an Amazon Simple Queue Service (Amazon SQS)
  /// queue when Amazon S3 detects specified events.
  final QueueConfigurationDeprecated? queueConfiguration;

  /// This data type is deprecated. A container for specifying the configuration
  /// for publication of messages to an Amazon Simple Notification Service
  /// (Amazon SNS) topic when Amazon S3 detects specified events.
  final TopicConfigurationDeprecated? topicConfiguration;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketNotificationOperation {
  Future<NotificationConfiguration> getBucketNotification({
    /// The name of the bucket for which to get the notification configuration.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
