import 'package:uni_storage_base/src/models/notification_configuration_filter.dart';

/// A container for specifying the configuration for publication of messages to an Amazon Simple Notification Service (Amazon SNS) topic when Amazon S3 detects specified events.
class TopicConfiguration {
  TopicConfiguration({
  required  this.events,
  required  this.topicArn,
    this.filter,
    this.id,
  });

  final List<String> events;
  final String topicArn;
  final NotificationConfigurationFilter? filter;
  final String? id;
}
