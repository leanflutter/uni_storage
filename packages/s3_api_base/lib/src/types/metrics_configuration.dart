import 'package:s3_api_base/src/types/metrics_filter.dart';

/// Specifies a metrics configuration for the CloudWatch request metrics
/// (specified by the metrics configuration ID) from an Amazon S3 bucket. If
/// you're updating an existing metrics configuration, note that this is a full
/// replacement of the existing metrics configuration. If you don't include the
/// elements you want to keep, they are erased. For more information, see
/// PutBucketMetricsConfiguration.
class MetricsConfiguration {
  MetricsConfiguration({
    required this.id,
    this.filter,
  });

  /// The ID used to identify the metrics configuration. The ID has a 64
  /// character limit and can only contain letters, numbers, periods, dashes,
  /// and underscores.
  final String id;

  /// Specifies a metrics configuration filter. The metrics configuration will
  /// only include objects that meet the filter's criteria. A filter must be a
  /// prefix, an object tag, an access point ARN, or a conjunction
  /// (MetricsAndOperator).
  final MetricsFilter? filter;
}
