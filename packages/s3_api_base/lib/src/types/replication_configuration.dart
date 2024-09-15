import 'package:s3_api_base/src/types/replication_rule.dart';

/// A container for replication rules. You can add up to 1,000 rules. The
/// maximum size of a replication configuration is 2 MB.
class ReplicationConfiguration {
  ReplicationConfiguration({
    required this.role,
    required this.rules,
  });

  /// The Amazon Resource Name (ARN) of the AWS Identity and Access Management
  /// (IAM) role that Amazon S3 assumes when replicating objects. For more
  /// information, see How to Set Up Replication in the Amazon S3 User Guide.
  final String role;

  /// A container for one or more replication rules. A replication configuration
  /// must have at least one rule and can contain a maximum of 1,000 rules.
  final ReplicationRule rules;
}
