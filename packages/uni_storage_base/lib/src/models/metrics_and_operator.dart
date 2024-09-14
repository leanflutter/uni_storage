import 'package:uni_storage_base/src/models/tag.dart';

/// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
class MetricsAndOperator {
  MetricsAndOperator({
    this.accessPointArn,
    this.prefix,
    this.tags,
  });

  final String? accessPointArn;
  final String? prefix;
  final List<Tag>? tags;
}
