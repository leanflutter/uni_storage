import 'package:s3_api_base/src/types/analytics_and_operator.dart';
import 'package:s3_api_base/src/types/tag.dart';

/// The filter used to describe a set of objects for analyses. A filter must
/// have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator).
/// If no filter is provided, all objects will be considered in any analysis.
class AnalyticsFilter {
  AnalyticsFilter({
    this.and,
    this.prefix,
    this.tag,
  });

  /// A conjunction (logical AND) of predicates, which is used in evaluating an
  /// analytics filter. The operator must have at least two predicates.
  final AnalyticsAndOperator? and;

  /// The prefix to use when evaluating an analytics filter.
  final String? prefix;

  /// The tag to use when evaluating an analytics filter.
  final Tag? tag;
}
