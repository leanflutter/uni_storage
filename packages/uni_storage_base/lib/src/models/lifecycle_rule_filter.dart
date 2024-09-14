import 'package:uni_storage_base/src/models/lifecycle_rule_and_operator.dart';
import 'package:uni_storage_base/src/models/tag.dart';

/// The Filter is used to identify objects that a Lifecycle Rule applies to. A Filter can have exactly one of Prefix, Tag, ObjectSizeGreaterThan, ObjectSizeLessThan, or And specified. If the Filter element is left empty, the Lifecycle Rule applies to all objects in the bucket.
class LifecycleRuleFilter {
  LifecycleRuleFilter({
    this.and,
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.tag,
  });

  final LifecycleRuleAndOperator? and;
  final int? objectSizeGreaterThan;
  final int? objectSizeLessThan;
  final String? prefix;
  final Tag? tag;
}
