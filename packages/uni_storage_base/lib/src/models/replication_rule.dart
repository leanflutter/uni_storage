import 'package:uni_storage_base/src/models/delete_marker_replication.dart';
import 'package:uni_storage_base/src/models/destination.dart';
import 'package:uni_storage_base/src/models/existing_object_replication.dart';
import 'package:uni_storage_base/src/models/replication_rule_filter.dart';
import 'package:uni_storage_base/src/models/source_selection_criteria.dart';

/// Specifies which Amazon S3 objects to replicate and where to store the replicas.
class ReplicationRule {
  ReplicationRule({
  required  this.destination,
  required  this.status,
    this.deleteMarkerReplication,
    this.existingObjectReplication,
    this.filter,
    this.iD,
    this.prefix,
    this.priority,
    this.sourceSelectionCriteria,
  });

  final Destination destination;
  final String status;
  final DeleteMarkerReplication? deleteMarkerReplication;
  final ExistingObjectReplication? existingObjectReplication;
  final ReplicationRuleFilter? filter;
  final String? iD;
  final String? prefix;
  final int? priority;
  final SourceSelectionCriteria? sourceSelectionCriteria;
}
