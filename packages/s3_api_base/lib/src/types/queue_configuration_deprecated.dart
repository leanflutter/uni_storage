/// This data type is deprecated. Use QueueConfiguration for the same purposes.
/// This data type specifies the configuration for publishing messages to an
/// Amazon Simple Queue Service (Amazon SQS) queue when Amazon S3 detects
/// specified events.
class QueueConfigurationDeprecated {
  QueueConfigurationDeprecated({
    this.event,
    this.events,
    this.id,
    this.queue,
  });

  ///  This member has been deprecated.
  final String? event;

  /// A collection of bucket events for which to send notifications.
  final List<String>? events;

  /// An optional unique identifier for configurations in a notification
  /// configuration. If you don't provide one, Amazon S3 will assign an ID.
  final String? id;

  /// The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3
  /// publishes a message when it detects events of the specified type.
  final String? queue;
}
