import 'package:s3_api_base/src/types/replication_rule_and_operator.dart';
import 'package:s3_api_base/src/types/tag.dart';

/// A filter that identifies the subset of objects to which the replication rule
/// applies. A Filter must specify exactly one Prefix, Tag, or an And child
/// element.
class ReplicationRuleFilter {
  ReplicationRuleFilter({
    this.and,
    this.prefix,
    this.tag,
  });

  /// A container for specifying rule filters. The filters determine the subset
  /// of objects to which the rule applies. This element is required only if you
  /// specify more than one filter. For example:
  final ReplicationRuleAndOperator? and;

  /// An object key name prefix that identifies the subset of objects to which
  /// the rule applies.
  final String? prefix;

  /// A container for specifying a tag key and value.
  final Tag? tag;
}
