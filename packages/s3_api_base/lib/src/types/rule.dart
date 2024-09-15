import 'package:s3_api_base/src/types/abort_incomplete_multipart_upload.dart';
import 'package:s3_api_base/src/types/lifecycle_expiration.dart';
import 'package:s3_api_base/src/types/noncurrent_version_expiration.dart';
import 'package:s3_api_base/src/types/noncurrent_version_transition.dart';
import 'package:s3_api_base/src/types/transition.dart';

/// Specifies lifecycle rules for an Amazon S3 bucket. For more information, see
/// Put Bucket Lifecycle Configuration in the Amazon S3 API Reference. For
/// examples, see Put Bucket Lifecycle Configuration Examples.
class Rule {
  Rule({
    required this.prefix,
    required this.status,
    this.abortIncompleteMultipartUpload,
    this.expiration,
    this.id,
    this.noncurrentVersionExpiration,
    this.noncurrentVersionTransition,
    this.transition,
  });

  /// Object key prefix that identifies one or more objects to which this rule
  /// applies.
  final String prefix;

  /// If Enabled, the rule is currently being applied. If Disabled, the rule is
  /// not currently being applied.
  final String status;

  /// Specifies the days since the initiation of an incomplete multipart upload
  /// that Amazon S3 will wait before permanently removing all parts of the
  /// upload. For more information, see Aborting Incomplete Multipart Uploads
  /// Using a Bucket Lifecycle Configuration in the Amazon S3 User Guide.
  final AbortIncompleteMultipartUpload? abortIncompleteMultipartUpload;

  /// Specifies the expiration for the lifecycle of the object.
  final LifecycleExpiration? expiration;

  /// Unique identifier for the rule. The value can't be longer than 255
  /// characters.
  final String? id;

  /// Specifies when noncurrent object versions expire. Upon expiration, Amazon
  /// S3 permanently deletes the noncurrent object versions. You set this
  /// lifecycle configuration action on a bucket that has versioning enabled (or
  /// suspended) to request that Amazon S3 delete noncurrent object versions at
  /// a specific period in the object's lifetime.
  final NoncurrentVersionExpiration? noncurrentVersionExpiration;

  /// Container for the transition rule that describes when noncurrent objects
  /// transition to the STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING,
  /// GLACIER_IR, GLACIER, or DEEP_ARCHIVE storage class. If your bucket is
  /// versioning-enabled (or versioning is suspended), you can set this action
  /// to request that Amazon S3 transition noncurrent object versions to the
  /// STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER_IR, GLACIER, or
  /// DEEP_ARCHIVE storage class at a specific period in the object's lifetime.
  final NoncurrentVersionTransition? noncurrentVersionTransition;

  /// Specifies when an object transitions to a specified storage class. For
  /// more information about Amazon S3 lifecycle configuration rules, see
  /// Transitioning Objects Using Amazon S3 Lifecycle in the Amazon S3 User
  /// Guide.
  final Transition? transition;
}
