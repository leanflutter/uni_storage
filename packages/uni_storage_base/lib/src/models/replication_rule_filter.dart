import 'package:uni_storage_base/src/models/replication_rule_and_operator.dart';
import 'package:uni_storage_base/src/models/tag.dart';

/// A filter that identifies the subset of objects to which the replication rule applies. A Filter must specify exactly one Prefix, Tag, or an And child element.
class ReplicationRuleFilter {
  ReplicationRuleFilter({
    this.and,
    this.prefix,
    this.tag,
  });

  final ReplicationRuleAndOperator? and;
  final String? prefix;
  final Tag? tag;
}
