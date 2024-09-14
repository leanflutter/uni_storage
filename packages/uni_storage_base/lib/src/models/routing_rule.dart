import 'package:uni_storage_base/src/models/condition.dart';
import 'package:uni_storage_base/src/models/redirect.dart';

/// Specifies the redirect behavior and when a redirect is applied. For more information about routing rules, see Configuring advanced conditional redirects in the Amazon S3 User Guide.
class RoutingRule {
  RoutingRule({
  required  this.redirect,
    this.condition,
  });

  final Redirect redirect;
  final Condition? condition;
}
