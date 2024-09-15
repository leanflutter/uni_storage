import 'package:s3_api_base/src/types/condition.dart';
import 'package:s3_api_base/src/types/redirect.dart';

/// Specifies the redirect behavior and when a redirect is applied. For more
/// information about routing rules, see Configuring advanced conditional
/// redirects in the Amazon S3 User Guide.
class RoutingRule {
  RoutingRule({
    required this.redirect,
    this.condition,
  });

  /// Container for redirect information. You can redirect requests to another
  /// host, to another page, or with another protocol. In the event of an error,
  /// you can specify a different error code to return.
  final Redirect redirect;

  /// A container for describing a condition that must be met for the specified
  /// redirect to apply. For example, 1. If request is for pages in the /docs
  /// folder, redirect to the /documents folder. 2. If request results in HTTP
  /// error 4xx, redirect request to another host where you might process the
  /// error.
  final Condition? condition;
}
