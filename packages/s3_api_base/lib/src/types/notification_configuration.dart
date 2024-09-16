import 'package:s3_api_base/src/types/event_bridge_configuration.dart';
import 'package:s3_api_base/src/types/lambda_function_configuration.dart';
import 'package:s3_api_base/src/types/queue_configuration.dart';
import 'package:s3_api_base/src/types/topic_configuration.dart';

/// A container for specifying the notification configuration of the bucket. If
/// this element is empty, notifications are turned off for the bucket.
class NotificationConfiguration {
  NotificationConfiguration({
    this.eventBridgeConfiguration,
    this.lambdaFunctionConfigurations,
    this.queueConfigurations,
    this.topicConfigurations,
  });

  /// Enables delivery of events to Amazon EventBridge.
  final EventBridgeConfiguration? eventBridgeConfiguration;

  /// Describes the AWS Lambda functions to invoke and the events for which to
  /// invoke them.
  final List<LambdaFunctionConfiguration>? lambdaFunctionConfigurations;

  /// The Amazon Simple Queue Service queues to publish messages to and the
  /// events for which to publish messages.
  final List<QueueConfiguration>? queueConfigurations;

  /// The topic to which notifications are sent and the events for which
  /// notifications are generated.
  final List<TopicConfiguration>? topicConfigurations;
}
