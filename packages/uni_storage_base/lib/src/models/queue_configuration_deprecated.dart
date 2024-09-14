/// This data type is deprecated. Use QueueConfiguration for the same purposes. This data type specifies the configuration for publishing messages to an Amazon Simple Queue Service (Amazon SQS) queue when Amazon S3 detects specified events. 
class QueueConfigurationDeprecated {
  QueueConfigurationDeprecated({
    this.event,
    this.events,
    this.id,
    this.queue,
  });

  final String? event;
  final List<String>? events;
  final String? id;
  final String? queue;
}
