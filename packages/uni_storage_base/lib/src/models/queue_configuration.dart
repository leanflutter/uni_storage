import 'package:uni_storage_base/src/models/notification_configuration_filter.dart';

/// Specifies the configuration for publishing messages to an Amazon Simple Queue Service (Amazon SQS) queue when Amazon S3 detects specified events.
class QueueConfiguration {
  QueueConfiguration({
  required  this.events,
  required  this.queueArn,
    this.filter,
    this.id,
  });

  final List<String> events;
  final String queueArn;
  final NotificationConfigurationFilter? filter;
  final String? id;
}
