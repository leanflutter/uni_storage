import 'package:s3_api_base/src/types/notification_configuration_filter.dart';

/// Specifies the configuration for publishing messages to an Amazon Simple
/// Queue Service (Amazon SQS) queue when Amazon S3 detects specified events.
class QueueConfiguration {
  QueueConfiguration({
    required this.events,
    required this.queueArn,
    this.filter,
    this.id,
  });

  /// A collection of bucket events for which to send notifications
  final List<String> events;

  /// The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3
  /// publishes a message when it detects events of the specified type.
  final String queueArn;

  /// Specifies object key name filtering rules. For information about key name
  /// filtering, see Configuring event notifications using object key name
  /// filtering in the Amazon S3 User Guide.
  final NotificationConfigurationFilter? filter;

  /// An optional unique identifier for configurations in a notification
  /// configuration. If you don't provide one, Amazon S3 will assign an ID.
  final String? id;
}
