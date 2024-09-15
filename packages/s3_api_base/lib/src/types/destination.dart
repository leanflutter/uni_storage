import 'package:s3_api_base/src/types/access_control_translation.dart';
import 'package:s3_api_base/src/types/encryption_configuration.dart';
import 'package:s3_api_base/src/types/metrics.dart';
import 'package:s3_api_base/src/types/replication_time.dart';

/// Specifies information about where to publish analysis or configuration
/// results for an Amazon S3 bucket and S3 Replication Time Control (S3 RTC).
class Destination {
  Destination({
    required this.bucket,
    this.accessControlTranslation,
    this.account,
    this.encryptionConfiguration,
    this.metrics,
    this.replicationTime,
    this.storageClass,
  });

  ///  The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to
  /// store the results.
  final String bucket;

  /// Specify this only in a cross-account scenario (where source and
  /// destination bucket owners are not the same), and you want to change
  /// replica ownership to the AWS account that owns the destination bucket. If
  /// this is not specified in the replication configuration, the replicas are
  /// owned by same AWS account that owns the source object.
  final AccessControlTranslation? accessControlTranslation;

  /// Destination bucket owner account ID. In a cross-account scenario, if you
  /// direct Amazon S3 to change replica ownership to the AWS account that owns
  /// the destination bucket by specifying the AccessControlTranslation
  /// property, this is the account ID of the destination bucket owner. For more
  /// information, see Replication Additional Configuration: Changing the
  /// Replica Owner in the Amazon S3 User Guide.
  final String? account;

  /// A container that provides information about encryption. If
  /// SourceSelectionCriteria is specified, you must specify this element.
  final EncryptionConfiguration? encryptionConfiguration;

  ///  A container specifying replication metrics-related settings enabling
  /// replication metrics and events.
  final Metrics? metrics;

  ///  A container specifying S3 Replication Time Control (S3 RTC), including
  /// whether S3 RTC is enabled and the time when all objects and operations on
  /// objects must be replicated. Must be specified together with a Metrics
  /// block.
  final ReplicationTime? replicationTime;

  ///  The storage class to use when replicating objects, such as S3 Standard or
  /// reduced redundancy. By default, Amazon S3 uses the storage class of the
  /// source object to create the object replica.
  final String? storageClass;
}
