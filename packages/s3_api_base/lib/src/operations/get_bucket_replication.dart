import 'package:s3_api_base/src/types/replication_configuration.dart';

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketReplicationOperation {
  Future<ReplicationConfiguration> getBucketReplication({
    /// The bucket name for which to get the replication information.
    required String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
