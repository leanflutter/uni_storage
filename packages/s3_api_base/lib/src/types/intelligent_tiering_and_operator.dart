import 'package:s3_api_base/src/types/tag.dart';

/// A container for specifying S3 Intelligent-Tiering filters. The filters
/// determine the subset of objects to which the rule applies.
class IntelligentTieringAndOperator {
  IntelligentTieringAndOperator({
    this.prefix,
    this.tags,
  });

  /// An object key name prefix that identifies the subset of objects to which
  /// the configuration applies.
  final String? prefix;

  /// All of these tags must exist in the object's tag set in order for the
  /// configuration to apply.
  final Tag? tags;
}
