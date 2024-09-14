import 'package:uni_storage_base/src/models/owner.dart';
import 'package:uni_storage_base/src/models/restore_status.dart';

/// The version of an object.
class ObjectVersion {
  ObjectVersion({
    this.checksumAlgorithm,
    this.eTag,
    this.isLatest,
    this.key,
    this.lastModified,
    this.owner,
    this.restoreStatus,
    this.size,
    this.storageClass,
    this.versionId,
  });

  final List<String>? checksumAlgorithm;
  final String? eTag;
  final bool? isLatest;
  final String? key;
  final DateTime? lastModified;
  final Owner? owner;
  final RestoreStatus? restoreStatus;
  final int? size;
  final String? storageClass;
  final String? versionId;
}
