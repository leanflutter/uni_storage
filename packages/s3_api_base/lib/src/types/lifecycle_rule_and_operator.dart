import 'package:s3_api_base/src/types/tag.dart';

/// This is used in a Lifecycle Rule Filter to apply a logical AND to two or
/// more predicates. The Lifecycle Rule will apply to any object matching all of
/// the predicates configured inside the And operator.
class LifecycleRuleAndOperator {
  LifecycleRuleAndOperator({
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.tags,
  });

  /// Minimum object size to which the rule applies.
  final int? objectSizeGreaterThan;

  /// Maximum object size to which the rule applies.
  final int? objectSizeLessThan;

  /// Prefix identifying one or more objects to which the rule applies.
  final String? prefix;

  /// All of these tags must exist in the object's tag set in order for the rule
  /// to apply.
  final Tag? tags;
}
