import 'package:uni_storage_base/src/models/tag.dart';

/// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates in any combination, and an object must match all of the predicates for the filter to apply.
class AnalyticsAndOperator {
  AnalyticsAndOperator({
    this.prefix,
    this.tags,
  });

  final String? prefix;
  final List<Tag>? tags;
}
