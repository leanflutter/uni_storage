import 'package:s3_api_base/src/types/abort_incomplete_multipart_upload.dart';
import 'package:s3_api_base/src/types/lifecycle_expiration.dart';
import 'package:s3_api_base/src/types/lifecycle_rule_filter.dart';
import 'package:s3_api_base/src/types/noncurrent_version_expiration.dart';
import 'package:s3_api_base/src/types/noncurrent_version_transition.dart';
import 'package:s3_api_base/src/types/transition.dart';

/// A lifecycle rule for individual objects in an Amazon S3 bucket.
class LifecycleRule {
  LifecycleRule({
    required this.status,
    this.abortIncompleteMultipartUpload,
    this.expiration,
    this.filter,
    this.id,
    this.noncurrentVersionExpiration,
    this.noncurrentVersionTransitions,
    this.prefix,
    this.transitions,
  });

  /// If 'Enabled', the rule is currently being applied. If 'Disabled', the rule
  /// is not currently being applied.
  final String status;

  /// Specifies the days since the initiation of an incomplete multipart upload
  /// that Amazon S3 will wait before permanently removing all parts of the
  /// upload. For more information, see Aborting Incomplete Multipart Uploads
  /// Using a Bucket Lifecycle Configuration in the Amazon S3 User Guide.
  final AbortIncompleteMultipartUpload? abortIncompleteMultipartUpload;

  /// Specifies the expiration for the lifecycle of the object in the form of
  /// date, days and, whether the object has a delete marker.
  final LifecycleExpiration? expiration;

  /// The Filter is used to identify objects that a Lifecycle Rule applies to. A
  /// Filter must have exactly one of Prefix, Tag, or And specified. Filter is
  /// required if the LifecycleRule does not contain a Prefix element.
  final LifecycleRuleFilter? filter;

  /// Unique identifier for the rule. The value cannot be longer than 255
  /// characters.
  final String? id;

  /// Specifies when noncurrent object versions expire. Upon expiration, Amazon
  /// S3 permanently deletes the noncurrent object versions. You set this
  /// lifecycle configuration action on a bucket that has versioning enabled (or
  /// suspended) to request that Amazon S3 delete noncurrent object versions at
  /// a specific period in the object's lifetime.
  final NoncurrentVersionExpiration? noncurrentVersionExpiration;

  ///  Specifies the transition rule for the lifecycle rule that describes when
  /// noncurrent objects transition to a specific storage class. If your bucket
  /// is versioning-enabled (or versioning is suspended), you can set this
  /// action to request that Amazon S3 transition noncurrent object versions to
  /// a specific storage class at a set period in the object's lifetime.
  final NoncurrentVersionTransition? noncurrentVersionTransitions;

  ///  This member has been deprecated.
  final String? prefix;

  /// Specifies when an Amazon S3 object transitions to a specified storage
  /// class.
  final Transition? transitions;
}
