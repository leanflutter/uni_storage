import 'package:s3_api_base/src/types/metrics_filter.dart';

/// Root level tag for the MetricsConfiguration parameters.
class MetricsConfiguration {
  MetricsConfiguration({
    this.filter,
    this.id,
  });

  /// Specifies a metrics configuration filter. The metrics configuration will
  /// only include objects that meet the filter's criteria. A filter must be a
  /// prefix, an object tag, an access point ARN, or a conjunction
  /// (MetricsAndOperator).
  final MetricsFilter? filter;

  /// The ID used to identify the metrics configuration. The ID has a 64
  /// character limit and can only contain letters, numbers, periods, dashes,
  /// and underscores.
  final String? id;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketMetricsConfigurationOperation {
  Future<MetricsConfiguration> getBucketMetricsConfiguration({
    /// The name of the bucket containing the metrics configuration to retrieve.
    String bucket,

    /// The ID used to identify the metrics configuration. The ID has a 64
    /// character limit and can only contain letters, numbers, periods, dashes,
    /// and underscores.
    String id,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
