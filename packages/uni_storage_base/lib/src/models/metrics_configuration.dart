import 'package:uni_storage_base/src/models/metrics_filter.dart';

/// Specifies a metrics configuration for the CloudWatch request metrics (specified by the metrics configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration. If you don't include the elements you want to keep, they are erased. For more information, see PutBucketMetricsConfiguration.
class MetricsConfiguration {
  MetricsConfiguration({
  required  this.id,
    this.filter,
  });

  final String id;
  final MetricsFilter? filter;
}
