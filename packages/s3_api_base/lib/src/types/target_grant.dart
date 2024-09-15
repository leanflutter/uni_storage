import 'package:s3_api_base/src/types/grantee.dart';

/// Container for granting information.
class TargetGrant {
  TargetGrant({
    this.grantee,
    this.permission,
  });

  /// Container for the person being granted permissions.
  final Grantee? grantee;

  /// Logging permissions assigned to the grantee for the bucket.
  final String? permission;
}
