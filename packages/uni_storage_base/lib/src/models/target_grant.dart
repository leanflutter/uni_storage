import 'package:uni_storage_base/src/models/grantee.dart';

/// Container for granting information.
class TargetGrant {
  TargetGrant({
    this.grantee,
    this.permission,
  });

  final Grantee? grantee;
  final String? permission;
}
