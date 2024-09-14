import 'package:uni_storage_base/src/models/tag.dart';

/// This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
class LifecycleRuleAndOperator {
  LifecycleRuleAndOperator({
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.tags,
  });

  final int? objectSizeGreaterThan;
  final int? objectSizeLessThan;
  final String? prefix;
  final List<Tag>? tags;
}
