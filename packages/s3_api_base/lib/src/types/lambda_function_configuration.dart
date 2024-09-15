import 'package:s3_api_base/src/types/notification_configuration_filter.dart';

/// A container for specifying the configuration for AWS Lambda notifications.
class LambdaFunctionConfiguration {
  LambdaFunctionConfiguration({
    required this.events,
    required this.lambdaFunctionArn,
    this.filter,
    this.id,
  });

  /// The Amazon S3 bucket event for which to invoke the AWS Lambda function.
  /// For more information, see Supported Event Types in the Amazon S3 User
  /// Guide.
  final List<String> events;

  /// The Amazon Resource Name (ARN) of the AWS Lambda function that Amazon S3
  /// invokes when the specified event type occurs.
  final String lambdaFunctionArn;

  /// Specifies object key name filtering rules. For information about key name
  /// filtering, see Configuring event notifications using object key name
  /// filtering in the Amazon S3 User Guide.
  final NotificationConfigurationFilter? filter;

  /// An optional unique identifier for configurations in a notification
  /// configuration. If you don't provide one, Amazon S3 will assign an ID.
  final String? id;
}
