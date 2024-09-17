/// This action creates an Amazon S3 bucket. To create an Amazon S3 on Outposts
/// bucket, see CreateBucket.
abstract mixin class CreateBucketOperation {
  Future<void> createBucket({
    /// The name of the bucket to create.
    required String bucket,

    /// The canned ACL to apply to the bucket.
    String? acl,

    /// Specifies whether you want S3 Object Lock to be enabled for the new
    /// bucket.
    String? bucketObjectLockEnabled,

    /// Allows grantee the read, write, read ACP, and write ACP permissions on
    /// the bucket.
    String? grantFullControl,

    /// Allows grantee to list the objects in the bucket.
    String? grantRead,

    /// Allows grantee to read the bucket ACL.
    String? grantReadAcp,

    /// Allows grantee to create new objects in the bucket.
    String? grantWrite,

    /// Allows grantee to write the ACL for the applicable bucket.
    String? grantWriteAcp,

    /// The container element for object ownership for a bucket's ownership
    /// controls.
    String? objectOwnership,
  });
}
