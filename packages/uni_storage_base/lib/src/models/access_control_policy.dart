import 'package:uni_storage_base/src/models/grant.dart';
import 'package:uni_storage_base/src/models/owner.dart';

/// Contains the elements that set the ACL permissions for an object per grantee.
class AccessControlPolicy {
  AccessControlPolicy({
    this.grants,
    this.owner,
  });

  final List<Grant>? grants;
  final Owner? owner;
}
