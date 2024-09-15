import 'package:s3_api_base/src/types/lifecycle_rule_and_operator.dart';
import 'package:s3_api_base/src/types/tag.dart';

/// The Filter is used to identify objects that a Lifecycle Rule applies to. A
/// Filter can have exactly one of Prefix, Tag, ObjectSizeGreaterThan,
/// ObjectSizeLessThan, or And specified. If the Filter element is left empty,
/// the Lifecycle Rule applies to all objects in the bucket.
class LifecycleRuleFilter {
  LifecycleRuleFilter({
    this.and,
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.tag,
  });

  /// This is used in a Lifecycle Rule Filter to apply a logical AND to two or
  /// more predicates. The Lifecycle Rule will apply to any object matching all
  /// of the predicates configured inside the And operator.
  final LifecycleRuleAndOperator? and;

  /// Minimum object size to which the rule applies.
  final int? objectSizeGreaterThan;

  /// Maximum object size to which the rule applies.
  final int? objectSizeLessThan;

  /// Prefix identifying one or more objects to which the rule applies.
  final String? prefix;

  /// This tag must exist in the object's tag set in order for the rule to
  /// apply.
  final Tag? tag;
}
