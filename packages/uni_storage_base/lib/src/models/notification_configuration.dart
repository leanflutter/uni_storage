import 'package:uni_storage_base/src/models/event_bridge_configuration.dart';
import 'package:uni_storage_base/src/models/lambda_function_configuration.dart';
import 'package:uni_storage_base/src/models/queue_configuration.dart';
import 'package:uni_storage_base/src/models/topic_configuration.dart';

/// A container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off for the bucket.
class NotificationConfiguration {
  NotificationConfiguration({
    this.eventBridgeConfiguration,
    this.lambdaFunctionConfigurations,
    this.queueConfigurations,
    this.topicConfigurations,
  });

  final EventBridgeConfiguration? eventBridgeConfiguration;
  final List<LambdaFunctionConfiguration>? lambdaFunctionConfigurations;
  final List<QueueConfiguration>? queueConfigurations;
  final List<TopicConfiguration>? topicConfigurations;
}
