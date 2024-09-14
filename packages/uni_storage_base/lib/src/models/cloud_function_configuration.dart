/// Container for specifying the AWS Lambda notification configuration.
class CloudFunctionConfiguration {
  CloudFunctionConfiguration({
    this.cloudFunction,
    this.event,
    this.events,
    this.id,
    this.invocationRole,
  });

  final String? cloudFunction;
  final String? event;
  final List<String>? events;
  final String? id;
  final String? invocationRole;
}
