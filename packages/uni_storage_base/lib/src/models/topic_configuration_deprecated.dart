/// A container for specifying the configuration for publication of messages to an Amazon Simple Notification Service (Amazon SNS) topic when Amazon S3 detects specified events. This data type is deprecated. Use TopicConfiguration instead.
class TopicConfigurationDeprecated {
  TopicConfigurationDeprecated({
    this.event,
    this.events,
    this.id,
    this.topic,
  });

  final String? event;
  final List<String>? events;
  final String? id;
  final String? topic;
}
