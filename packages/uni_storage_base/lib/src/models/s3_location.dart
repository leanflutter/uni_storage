import 'package:uni_storage_base/src/models/encryption.dart';
import 'package:uni_storage_base/src/models/grant.dart';
import 'package:uni_storage_base/src/models/metadata_entry.dart';
import 'package:uni_storage_base/src/models/tagging.dart';

/// Describes an Amazon S3 location that will receive the results of the restore request.
class S3Location {
  S3Location({
  required  this.bucketName,
  required  this.prefix,
    this.accessControlList,
    this.cannedACL,
    this.encryption,
    this.storageClass,
    this.tagging,
    this.userMetadata,
  });

  final String bucketName;
  final String prefix;
  final List<Grant>? accessControlList;
  final String? cannedACL;
  final Encryption? encryption;
  final String? storageClass;
  final Tagging? tagging;
  final List<MetadataEntry>? userMetadata;
}
