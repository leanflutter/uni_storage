import 'package:uni_storage_base/src/models/abort_incomplete_multipart_upload.dart';
import 'package:uni_storage_base/src/models/lifecycle_expiration.dart';
import 'package:uni_storage_base/src/models/noncurrent_version_expiration.dart';
import 'package:uni_storage_base/src/models/noncurrent_version_transition.dart';
import 'package:uni_storage_base/src/models/transition.dart';

/// Specifies lifecycle rules for an Amazon S3 bucket. For more information, see Put Bucket Lifecycle Configuration in the Amazon S3 API Reference. For examples, see Put Bucket Lifecycle Configuration Examples.
class Rule {
  Rule({
  required  this.prefix,
  required  this.status,
    this.abortIncompleteMultipartUpload,
    this.expiration,
    this.iD,
    this.noncurrentVersionExpiration,
    this.noncurrentVersionTransition,
    this.transition,
  });

  final String prefix;
  final String status;
  final AbortIncompleteMultipartUpload? abortIncompleteMultipartUpload;
  final LifecycleExpiration? expiration;
  final String? iD;
  final NoncurrentVersionExpiration? noncurrentVersionExpiration;
  final NoncurrentVersionTransition? noncurrentVersionTransition;
  final Transition? transition;
}
