import 'package:s3_api_base/src/types/analytics_configuration.dart';

/// Root level tag for the ListBucketAnalyticsConfigurationResult parameters.
class ListBucketAnalyticsConfigurationResult {
  ListBucketAnalyticsConfigurationResult({
    this.analyticsConfiguration,
    this.continuationToken,
    this.isTruncated,
    this.nextContinuationToken,
  });

  /// The list of analytics configurations for a bucket.
  final List<AnalyticsConfiguration>? analyticsConfiguration;

  /// The marker that is used as a starting point for this analytics
  /// configuration list response. This value is present if it was sent in the
  /// request.
  final String? continuationToken;

  /// Indicates whether the returned list of analytics configurations is
  /// complete. A value of true indicates that the list is not complete and the
  /// NextContinuationToken will be provided for a subsequent request.
  final bool? isTruncated;

  ///  NextContinuationToken is sent when isTruncated is true, which indicates
  /// that there are more analytics configurations to list. The next request
  /// must include this NextContinuationToken. The token is obfuscated and is
  /// not a usable value.
  final String? nextContinuationToken;
}

/// This operation is not supported by directory buckets.
abstract mixin class ListBucketAnalyticsConfigurationsOperation {
  Future<ListBucketAnalyticsConfigurationResult> listBucketAnalyticsConfigurations({
    /// The name of the bucket from which analytics configurations are
    /// retrieved.
    String bucket,

    /// The ContinuationToken that represents a placeholder from where this
    /// request should begin.
    String? continuationToken,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
