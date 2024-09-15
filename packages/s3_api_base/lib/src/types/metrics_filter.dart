import 'package:s3_api_base/src/types/metrics_and_operator.dart';
import 'package:s3_api_base/src/types/tag.dart';

/// Specifies a metrics configuration filter. The metrics configuration only
/// includes objects that meet the filter's criteria. A filter must be a prefix,
/// an object tag, an access point ARN, or a conjunction (MetricsAndOperator).
/// For more information, see PutBucketMetricsConfiguration.
class MetricsFilter {
  MetricsFilter({
    this.accessPointArn,
    this.and,
    this.prefix,
    this.tag,
  });

  /// The access point ARN used when evaluating a metrics filter.
  final String? accessPointArn;

  /// A conjunction (logical AND) of predicates, which is used in evaluating a
  /// metrics filter. The operator must have at least two predicates, and an
  /// object must match all of the predicates in order for the filter to apply.
  final MetricsAndOperator? and;

  /// The prefix used when evaluating a metrics filter.
  final String? prefix;

  /// The tag used when evaluating a metrics filter.
  final Tag? tag;
}
