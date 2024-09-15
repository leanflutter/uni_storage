import 'package:s3_api_base/src/types/encryption.dart';
import 'package:s3_api_base/src/types/grant.dart';
import 'package:s3_api_base/src/types/metadata_entry.dart';
import 'package:s3_api_base/src/types/tagging.dart';

/// Describes an Amazon S3 location that will receive the results of the restore
/// request.
class S3Location {
  S3Location({
    required this.bucketName,
    required this.prefix,
    this.accessControlList,
    this.cannedACL,
    this.encryption,
    this.storageClass,
    this.tagging,
    this.userMetadata,
  });

  /// The name of the bucket where the restore results will be placed.
  final String bucketName;

  /// The prefix that is prepended to the restore results for this request.
  final String prefix;

  /// A list of grants that control access to the staged results.
  final Grant? accessControlList;

  /// The canned ACL to apply to the restore results.
  final String? cannedACL;

  /// Contains the type of server-side encryption used.
  final Encryption? encryption;

  /// The class of storage used to store the restore results.
  final String? storageClass;

  /// The tag-set that is applied to the restore results.
  final Tagging? tagging;

  /// A list of metadata to store with the restore results in S3.
  final MetadataEntry? userMetadata;
}
