import 'package:s3_api_base/src/types/delete_marker_replication.dart';
import 'package:s3_api_base/src/types/destination.dart';
import 'package:s3_api_base/src/types/existing_object_replication.dart';
import 'package:s3_api_base/src/types/replication_rule_filter.dart';
import 'package:s3_api_base/src/types/source_selection_criteria.dart';

/// Specifies which Amazon S3 objects to replicate and where to store the
/// replicas.
class ReplicationRule {
  ReplicationRule({
    required this.destination,
    required this.status,
    this.deleteMarkerReplication,
    this.existingObjectReplication,
    this.filter,
    this.id,
    this.prefix,
    this.priority,
    this.sourceSelectionCriteria,
  });

  /// A container for information about the replication destination and its
  /// configurations including enabling the S3 Replication Time Control (S3
  /// RTC).
  final Destination destination;

  /// Specifies whether the rule is enabled.
  final String status;

  /// Specifies whether Amazon S3 replicates delete markers. If you specify a
  /// Filter in your replication configuration, you must also include a
  /// DeleteMarkerReplication element. If your Filter includes a Tag element,
  /// the DeleteMarkerReplication Status must be set to Disabled, because Amazon
  /// S3 does not support replicating delete markers for tag-based rules. For an
  /// example configuration, see Basic Rule Configuration.
  final DeleteMarkerReplication? deleteMarkerReplication;

  /// Optional configuration to replicate existing source bucket objects.
  final ExistingObjectReplication? existingObjectReplication;

  /// A filter that identifies the subset of objects to which the replication
  /// rule applies. A Filter must specify exactly one Prefix, Tag, or an And
  /// child element.
  final ReplicationRuleFilter? filter;

  /// A unique identifier for the rule. The maximum value is 255 characters.
  final String? id;

  ///  This member has been deprecated.
  final String? prefix;

  /// The priority indicates which rule has precedence whenever two or more
  /// replication rules conflict. Amazon S3 will attempt to replicate objects
  /// according to all replication rules. However, if there are two or more
  /// rules with the same destination bucket, then objects will be replicated
  /// according to the rule with the highest priority. The higher the number,
  /// the higher the priority.
  final int? priority;

  /// A container that describes additional filters for identifying the source
  /// objects that you want to replicate. You can choose to enable or disable
  /// the replication of these objects. Currently, Amazon S3 supports only the
  /// filter that you can specify for objects created with server-side
  /// encryption using a customer managed key stored in AWS Key Management
  /// Service (SSE-KMS).
  final SourceSelectionCriteria? sourceSelectionCriteria;
}
