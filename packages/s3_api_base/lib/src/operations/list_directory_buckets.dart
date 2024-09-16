import 'package:s3_api_base/src/types/bucket.dart';

/// Root level tag for the ListDirectoryBucketsOutput parameters.
class ListDirectoryBucketsOutput {
  ListDirectoryBucketsOutput({
    this.buckets,
    this.continuationToken,
  });

  /// The list of buckets owned by the requester.
  final List<Bucket>? buckets;

  /// If ContinuationToken was sent with the request, it is included in the
  /// response. You can use the returned ContinuationToken for pagination of the
  /// list response.
  final String? continuationToken;
}

/// Returns a list of all Amazon S3 directory buckets owned by the authenticated
/// sender of the request. For more information about directory buckets, see
/// Directory buckets in the Amazon S3 User Guide.
abstract mixin class ListDirectoryBucketsOperation {
  Future<ListDirectoryBucketsOutput> listDirectoryBuckets({
    ///  ContinuationToken indicates to Amazon S3 that the list is being
    /// continued on buckets in this account with a token. ContinuationToken is
    /// obfuscated and is not a real bucket name. You can use this
    /// ContinuationToken for the pagination of the list results.
    String? continuationToken,

    /// Maximum number of buckets to be returned in response. When the number is
    /// more than the count of buckets that are owned by an AWS account, return
    /// all the buckets in response.
    String? maxDirectoryBuckets,
  });
}
