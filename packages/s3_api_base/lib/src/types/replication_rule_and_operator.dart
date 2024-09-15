import 'package:s3_api_base/src/types/tag.dart';

/// A container for specifying rule filters. The filters determine the subset of
/// objects to which the rule applies. This element is required only if you
/// specify more than one filter.
class ReplicationRuleAndOperator {
  ReplicationRuleAndOperator({
    this.prefix,
    this.tags,
  });

  /// An object key name prefix that identifies the subset of objects to which
  /// the rule applies.
  final String? prefix;

  /// An array of tags containing key and value pairs.
  final Tag? tags;
}
