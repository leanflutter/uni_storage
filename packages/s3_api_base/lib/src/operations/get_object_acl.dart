import 'package:s3_api_base/src/types/access_control_policy.dart';

/// This operation is not supported by directory buckets.
abstract mixin class GetObjectAclOperation {
  Future<AccessControlPolicy> getObjectAcl({
    /// The bucket name that contains the object for which to get the ACL
    /// information.
    required String bucket,

    /// The key of the object for which to get the ACL information.
    required String key,

    /// Version ID used to reference a specific version of the object.
    String? versionId,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Confirms that the requester knows that they will be charged for the
    /// request. Bucket owners need not specify this parameter in their
    /// requests. If either the source or destination S3 bucket has Requester
    /// Pays enabled, the requester will pay for corresponding charges to copy
    /// the object. For information about downloading objects from Requester
    /// Pays buckets, see Downloading Objects in Requester Pays Buckets in the
    /// Amazon S3 User Guide.
    String? requestPayer,
  });
}
