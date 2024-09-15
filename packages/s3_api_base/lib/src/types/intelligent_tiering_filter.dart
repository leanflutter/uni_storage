import 'package:s3_api_base/src/types/intelligent_tiering_and_operator.dart';
import 'package:s3_api_base/src/types/tag.dart';

/// The Filter is used to identify objects that the S3 Intelligent-Tiering
/// configuration applies to.
class IntelligentTieringFilter {
  IntelligentTieringFilter({
    this.and,
    this.prefix,
    this.tag,
  });

  /// A conjunction (logical AND) of predicates, which is used in evaluating a
  /// metrics filter. The operator must have at least two predicates, and an
  /// object must match all of the predicates in order for the filter to apply.
  final IntelligentTieringAndOperator? and;

  /// An object key name prefix that identifies the subset of objects to which
  /// the rule applies.
  final String? prefix;

  /// A container of a key value name pair.
  final Tag? tag;
}
