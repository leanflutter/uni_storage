import 'package:uni_storage_base/src/models/tag.dart';

/// A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter. 
class ReplicationRuleAndOperator {
  ReplicationRuleAndOperator({
    this.prefix,
    this.tags,
  });

  final String? prefix;
  final List<Tag>? tags;
}
