import 'package:s3_api_base/src/types/grantee.dart';

/// Container for grant information.
class Grant {
  Grant({
    this.grantee,
    this.permission,
  });

  /// The person being granted permissions.
  final Grantee? grantee;

  /// Specifies the permission given to the grantee.
  final String? permission;
}
