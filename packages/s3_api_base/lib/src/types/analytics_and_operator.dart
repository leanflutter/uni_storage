import 'package:s3_api_base/src/types/tag.dart';

/// A conjunction (logical AND) of predicates, which is used in evaluating a
/// metrics filter. The operator must have at least two predicates in any
/// combination, and an object must match all of the predicates for the filter
/// to apply.
class AnalyticsAndOperator {
  AnalyticsAndOperator({
    this.prefix,
    this.tags,
  });

  /// The prefix to use when evaluating an AND predicate: The prefix that an
  /// object must have to be included in the metrics results.
  final String? prefix;

  /// The list of tags to use when evaluating an AND predicate.
  final Tag? tags;
}
