import 'package:uni_storage_base/src/models/abort_incomplete_multipart_upload.dart';
import 'package:uni_storage_base/src/models/lifecycle_expiration.dart';
import 'package:uni_storage_base/src/models/lifecycle_rule_filter.dart';
import 'package:uni_storage_base/src/models/noncurrent_version_expiration.dart';
import 'package:uni_storage_base/src/models/noncurrent_version_transition.dart';
import 'package:uni_storage_base/src/models/transition.dart';

/// A lifecycle rule for individual objects in an Amazon S3 bucket.
class LifecycleRule {
  LifecycleRule({
  required  this.status,
    this.abortIncompleteMultipartUpload,
    this.expiration,
    this.filter,
    this.iD,
    this.noncurrentVersionExpiration,
    this.noncurrentVersionTransitions,
    this.prefix,
    this.transitions,
  });

  final String status;
  final AbortIncompleteMultipartUpload? abortIncompleteMultipartUpload;
  final LifecycleExpiration? expiration;
  final LifecycleRuleFilter? filter;
  final String? iD;
  final NoncurrentVersionExpiration? noncurrentVersionExpiration;
  final List<NoncurrentVersionTransition>? noncurrentVersionTransitions;
  final String? prefix;
  final List<Transition>? transitions;
}
