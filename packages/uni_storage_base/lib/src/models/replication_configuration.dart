import 'package:uni_storage_base/src/models/replication_rule.dart';

/// A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication configuration is 2 MB.
class ReplicationConfiguration {
  ReplicationConfiguration({
  required  this.role,
  required  this.rules,
  });

  final String role;
  final List<ReplicationRule> rules;
}
