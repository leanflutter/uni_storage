import 'package:uni_storage_base/src/models/cloud_function_configuration.dart';
import 'package:uni_storage_base/src/models/queue_configuration_deprecated.dart';
import 'package:uni_storage_base/src/models/topic_configuration_deprecated.dart';

/// Container for specifying the AWS Lambda notification configuration.
class NotificationConfigurationDeprecated {
  NotificationConfigurationDeprecated({
    this.cloudFunctionConfiguration,
    this.queueConfiguration,
    this.topicConfiguration,
  });

  final CloudFunctionConfiguration? cloudFunctionConfiguration;
  final QueueConfigurationDeprecated? queueConfiguration;
  final TopicConfigurationDeprecated? topicConfiguration;
}
