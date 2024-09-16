import 'package:s3_api_base/src/types/ownership_controls_rule.dart';

/// Root level tag for the OwnershipControls parameters.
class OwnershipControls {
  OwnershipControls({
    this.rule,
  });

  /// The container element for an ownership control rule.
  final List<OwnershipControlsRule>? rule;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketOwnershipControlsOperation {
  Future<OwnershipControls> getBucketOwnershipControls({
    /// The name of the Amazon S3 bucket whose OwnershipControls you want to
    /// retrieve.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
