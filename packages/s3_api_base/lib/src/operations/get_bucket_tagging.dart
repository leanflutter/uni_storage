import 'package:s3_api_base/src/types/tag.dart';

/// Root level tag for the Tagging parameters.
class Tagging {
  Tagging({
    this.tagSet,
  });

  /// Contains the tag set.
  final List<Tag>? tagSet;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketTaggingOperation {
  Future<Tagging> getBucketTagging({
    /// The name of the bucket for which to get the tagging information.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
