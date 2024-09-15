import 'package:s3_api_base/src/types/object_lock_rule.dart';

/// The container element for Object Lock configuration parameters.
class ObjectLockConfiguration {
  ObjectLockConfiguration({
    this.objectLockEnabled,
    this.rule,
  });

  /// Indicates whether this bucket has an Object Lock configuration enabled.
  /// Enable ObjectLockEnabled when you apply ObjectLockConfiguration to a
  /// bucket.
  final String? objectLockEnabled;

  /// Specifies the Object Lock rule for the specified object. Enable the this
  /// rule when you apply ObjectLockConfiguration to a bucket. Bucket settings
  /// require both a mode and a period. The period can be either Days or Years
  /// but you must select one. You cannot specify Days and Years at the same
  /// time.
  final ObjectLockRule? rule;
}
