import 'package:s3_api_base/src/types/notification_configuration_filter.dart';

/// A container for specifying the configuration for publication of messages to
/// an Amazon Simple Notification Service (Amazon SNS) topic when Amazon S3
/// detects specified events.
class TopicConfiguration {
  TopicConfiguration({
    required this.events,
    required this.topicArn,
    this.filter,
    this.id,
  });

  /// The Amazon S3 bucket event about which to send notifications. For more
  /// information, see Supported Event Types in the Amazon S3 User Guide.
  final List<String> events;

  /// The Amazon Resource Name (ARN) of the Amazon SNS topic to which Amazon S3
  /// publishes a message when it detects events of the specified type.
  final String topicArn;

  /// Specifies object key name filtering rules. For information about key name
  /// filtering, see Configuring event notifications using object key name
  /// filtering in the Amazon S3 User Guide.
  final NotificationConfigurationFilter? filter;

  /// An optional unique identifier for configurations in a notification
  /// configuration. If you don't provide one, Amazon S3 will assign an ID.
  final String? id;
}
