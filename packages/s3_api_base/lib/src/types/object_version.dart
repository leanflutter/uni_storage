import 'package:s3_api_base/src/types/owner.dart';
import 'package:s3_api_base/src/types/restore_status.dart';

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

  /// The algorithm that was used to create a checksum of the object.
  final List<String>? checksumAlgorithm;

  /// The entity tag is an MD5 hash of that version of the object.
  final String? eTag;

  /// Specifies whether the object is (true) or is not (false) the latest
  /// version of an object.
  final bool? isLatest;

  /// The object key.
  final String? key;

  /// Date and time when the object was last modified.
  final DateTime? lastModified;

  /// Specifies the owner of the object.
  final Owner? owner;

  /// Specifies the restoration status of an object. Objects in certain storage
  /// classes must be restored before they can be retrieved. For more
  /// information about these storage classes and how to work with archived
  /// objects, see Working with archived objects in the Amazon S3 User Guide.
  final RestoreStatus? restoreStatus;

  /// Size in bytes of the object.
  final int? size;

  /// The class of storage used to store the object.
  final String? storageClass;

  /// Version ID of an object.
  final String? versionId;
}
