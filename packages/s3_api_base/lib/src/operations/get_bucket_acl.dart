import 'package:s3_api_base/src/types/grant.dart';
import 'package:s3_api_base/src/types/owner.dart';

/// Root level tag for the AccessControlPolicy parameters.
class AccessControlPolicy {
  AccessControlPolicy({
    this.grants,
    this.owner,
  });

  /// A list of grants.
  final List<Grant>? grants;

  /// Container for the bucket owner's display name and ID.
  final Owner? owner;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketAclOperation {
  Future<dynamic> getBucketAcl({
    /// Specifies the S3 bucket whose ACL is being requested.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
