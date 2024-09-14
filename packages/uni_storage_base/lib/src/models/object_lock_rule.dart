import 'package:uni_storage_base/src/models/default_retention.dart';

/// The container element for an Object Lock rule.
class ObjectLockRule {
  ObjectLockRule({
    this.defaultRetention,
  });

  final DefaultRetention? defaultRetention;
}
