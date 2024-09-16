import 'package:s3_api_base/src/types/tag.dart';

/// A conjunction (logical AND) of predicates, which is used in evaluating a
/// metrics filter. The operator must have at least two predicates, and an
/// object must match all of the predicates in order for the filter to apply.
class MetricsAndOperator {
  MetricsAndOperator({
    this.accessPointArn,
    this.prefix,
    this.tags,
  });

  /// The access point ARN used when evaluating an AND predicate.
  final String? accessPointArn;

  /// The prefix used when evaluating an AND predicate.
  final String? prefix;

  /// The list of tags used when evaluating an AND predicate.
  final List<Tag>? tags;
}
