import 'package:uni_storage_base/src/models/access_control_translation.dart';
import 'package:uni_storage_base/src/models/encryption_configuration.dart';
import 'package:uni_storage_base/src/models/metrics.dart';
import 'package:uni_storage_base/src/models/replication_time.dart';

/// Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket and S3 Replication Time Control (S3 RTC).
class Destination {
  Destination({
  required  this.bucket,
    this.accessControlTranslation,
    this.account,
    this.encryptionConfiguration,
    this.metrics,
    this.replicationTime,
    this.storageClass,
  });

  final String bucket;
  final AccessControlTranslation? accessControlTranslation;
  final String? account;
  final EncryptionConfiguration? encryptionConfiguration;
  final Metrics? metrics;
  final ReplicationTime? replicationTime;
  final String? storageClass;
}
