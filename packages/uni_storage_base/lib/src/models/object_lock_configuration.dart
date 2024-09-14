import 'package:uni_storage_base/src/models/object_lock_rule.dart';

/// The container element for Object Lock configuration parameters.
class ObjectLockConfiguration {
  ObjectLockConfiguration({
    this.objectLockEnabled,
    this.rule,
  });

  final String? objectLockEnabled;
  final ObjectLockRule? rule;
}
