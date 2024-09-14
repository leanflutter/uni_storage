import 'package:uni_storage_base/src/models/grantee.dart';

/// Container for grant information.
class Grant {
  Grant({
    this.grantee,
    this.permission,
  });

  final Grantee? grantee;
  final String? permission;
}
