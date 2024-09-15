/// Container for specifying the AWS Lambda notification configuration.
class CloudFunctionConfiguration {
  CloudFunctionConfiguration({
    this.cloudFunction,
    this.event,
    this.events,
    this.id,
    this.invocationRole,
  });

  /// Lambda cloud function ARN that Amazon S3 can invoke when it detects events
  /// of the specified type.
  final String? cloudFunction;

  ///  This member has been deprecated.
  final String? event;

  /// Bucket events for which to send notifications.
  final List<String>? events;

  /// An optional unique identifier for configurations in a notification
  /// configuration. If you don't provide one, Amazon S3 will assign an ID.
  final String? id;

  /// The role supporting the invocation of the Lambda function
  final String? invocationRole;
}
