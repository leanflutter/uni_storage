import 'package:s3_api_base/src/types/bucket.dart';
import 'package:s3_api_base/src/types/owner.dart';

/// Root level tag for the ListAllMyBucketsResult parameters.
class ListAllMyBucketsResult {
  ListAllMyBucketsResult({
    this.buckets,
    this.continuationToken,
    this.owner,
  });

  /// The list of buckets owned by the requester.
  final List<Bucket>? buckets;

  ///  ContinuationToken is included in the response when there are more buckets
  /// that can be listed with pagination. The next ListBuckets request to Amazon
  /// S3 can be continued with this ContinuationToken. ContinuationToken is
  /// obfuscated and is not a real bucket.
  final String? continuationToken;

  /// The owner of the buckets listed.
  final Owner? owner;
}

/// This operation is not supported by directory buckets.
abstract mixin class ListBucketsOperation {
  Future<dynamic> listBuckets({
    ///  ContinuationToken indicates to Amazon S3 that the list is being
    /// continued on this bucket with a token. ContinuationToken is obfuscated
    /// and is not a real key. You can use this ContinuationToken for pagination
    /// of the list results.
    String? continuationToken,

    /// Maximum number of buckets to be returned in response. When the number is
    /// more than the count of buckets that are owned by an AWS account, return
    /// all the buckets in response.
    String? maxBuckets,
  });
}
