import 'package:s3_api_base/src/types/event_bridge_configuration.dart';
import 'package:s3_api_base/src/types/lambda_function_configuration.dart';
import 'package:s3_api_base/src/types/queue_configuration.dart';
import 'package:s3_api_base/src/types/topic_configuration.dart';

/// Root level tag for the NotificationConfiguration parameters.
class NotificationConfiguration {
  NotificationConfiguration({
    this.cloudFunctionConfiguration,
    this.eventBridgeConfiguration,
    this.queueConfiguration,
    this.topicConfiguration,
  });

  /// Describes the AWS Lambda functions to invoke and the events for which to
  /// invoke them.
  final List<LambdaFunctionConfiguration>? cloudFunctionConfiguration;

  /// Enables delivery of events to Amazon EventBridge.
  final EventBridgeConfiguration? eventBridgeConfiguration;

  /// The Amazon Simple Queue Service queues to publish messages to and the
  /// events for which to publish messages.
  final List<QueueConfiguration>? queueConfiguration;

  /// The topic to which notifications are sent and the events for which
  /// notifications are generated.
  final List<TopicConfiguration>? topicConfiguration;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketNotificationConfigurationOperation {
  Future<NotificationConfiguration> getBucketNotificationConfiguration({
    /// The name of the bucket for which to get the notification configuration.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
