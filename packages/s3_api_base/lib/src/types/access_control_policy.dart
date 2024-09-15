import 'package:s3_api_base/src/types/grant.dart';
import 'package:s3_api_base/src/types/owner.dart';

/// Contains the elements that set the ACL permissions for an object per
/// grantee.
class AccessControlPolicy {
  AccessControlPolicy({
    this.grants,
    this.owner,
  });

  /// A list of grants.
  final Grant? grants;

  /// Container for the bucket owner's display name and ID.
  final Owner? owner;
}
