import 'package:uni_storage_base/src/models/owner.dart';
import 'package:uni_storage_base/src/models/restore_status.dart';

/// An object consists of data and its descriptive metadata.
class Object {
  Object({
    this.checksumAlgorithm,
    this.eTag,
    this.key,
    this.lastModified,
    this.owner,
    this.restoreStatus,
    this.size,
    this.storageClass,
  });

  final List<String>? checksumAlgorithm;
  final String? eTag;
  final String? key;
  final DateTime? lastModified;
  final Owner? owner;
  final RestoreStatus? restoreStatus;
  final int? size;
  final String? storageClass;
}
