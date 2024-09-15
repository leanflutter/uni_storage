import 'package:s3_api_base/src/types/default_retention.dart';

/// The container element for an Object Lock rule.
class ObjectLockRule {
  ObjectLockRule({
    this.defaultRetention,
  });

  /// The default Object Lock retention mode and period that you want to apply
  /// to new objects placed in the specified bucket. Bucket settings require
  /// both a mode and a period. The period can be either Days or Years but you
  /// must select one. You cannot specify Days and Years at the same time.
  final DefaultRetention? defaultRetention;
}
