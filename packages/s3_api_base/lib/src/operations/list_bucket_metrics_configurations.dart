import 'package:s3_api_base/src/types/metrics_configuration.dart';

/// Root level tag for the ListMetricsConfigurationsResult parameters.
class ListMetricsConfigurationsResult {
  ListMetricsConfigurationsResult({
    this.continuationToken,
    this.isTruncated,
    this.metricsConfiguration,
    this.nextContinuationToken,
  });

  /// The marker that is used as a starting point for this metrics configuration
  /// list response. This value is present if it was sent in the request.
  final String? continuationToken;

  /// Indicates whether the returned list of metrics configurations is complete.
  /// A value of true indicates that the list is not complete and the
  /// NextContinuationToken will be provided for a subsequent request.
  final bool? isTruncated;

  /// The list of metrics configurations for a bucket.
  final List<MetricsConfiguration>? metricsConfiguration;

  /// The marker used to continue a metrics configuration listing that has been
  /// truncated. Use the NextContinuationToken from a previously truncated list
  /// response to continue the listing. The continuation token is an opaque
  /// value that Amazon S3 understands.
  final String? nextContinuationToken;
}

/// This operation is not supported by directory buckets.
abstract mixin class ListBucketMetricsConfigurationsOperation {
  Future<ListMetricsConfigurationsResult> listBucketMetricsConfigurations({
    /// The name of the bucket containing the metrics configurations to
    /// retrieve.
    String bucket,

    /// The marker that is used to continue a metrics configuration listing that
    /// has been truncated. Use the NextContinuationToken from a previously
    /// truncated list response to continue the listing. The continuation token
    /// is an opaque value that Amazon S3 understands.
    String? continuationToken,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
