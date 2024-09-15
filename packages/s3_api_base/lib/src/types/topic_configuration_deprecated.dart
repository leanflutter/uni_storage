/// A container for specifying the configuration for publication of messages to
/// an Amazon Simple Notification Service (Amazon SNS) topic when Amazon S3
/// detects specified events. This data type is deprecated. Use
/// TopicConfiguration instead.
class TopicConfigurationDeprecated {
  TopicConfigurationDeprecated({
    this.event,
    this.events,
    this.id,
    this.topic,
  });

  ///  This member has been deprecated.
  final String? event;

  /// A collection of events related to objects
  final List<String>? events;

  /// An optional unique identifier for configurations in a notification
  /// configuration. If you don't provide one, Amazon S3 will assign an ID.
  final String? id;

  /// Amazon SNS topic to which Amazon S3 will publish a message to report the
  /// specified events for the bucket.
  final String? topic;
}
