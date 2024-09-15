import 'package:s3_api_base/src/types/owner.dart';
import 'package:s3_api_base/src/types/restore_status.dart';

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

  /// The algorithm that was used to create a checksum of the object.
  final List<String>? checksumAlgorithm;

  /// The entity tag is a hash of the object. The ETag reflects changes only to
  /// the contents of an object, not its metadata. The ETag may or may not be an
  /// MD5 digest of the object data. Whether or not it is depends on how the
  /// object was created and how it is encrypted as described below:
  final String? eTag;

  /// The name that you assign to an object. You use the object key to retrieve
  /// the object.
  final String? key;

  /// Creation date of the object.
  final DateTime? lastModified;

  /// The owner of the object
  final Owner? owner;

  /// Specifies the restoration status of an object. Objects in certain storage
  /// classes must be restored before they can be retrieved. For more
  /// information about these storage classes and how to work with archived
  /// objects, see Working with archived objects in the Amazon S3 User Guide.
  final RestoreStatus? restoreStatus;

  /// Size in bytes of the object
  final int? size;

  /// The class of storage used to store the object.
  final String? storageClass;
}
