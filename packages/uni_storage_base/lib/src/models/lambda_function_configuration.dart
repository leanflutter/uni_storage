import 'package:uni_storage_base/src/models/notification_configuration_filter.dart';

/// A container for specifying the configuration for AWS Lambda notifications.
class LambdaFunctionConfiguration {
  LambdaFunctionConfiguration({
  required  this.events,
  required  this.lambdaFunctionArn,
    this.filter,
    this.id,
  });

  final List<String> events;
  final String lambdaFunctionArn;
  final NotificationConfigurationFilter? filter;
  final String? id;
}
