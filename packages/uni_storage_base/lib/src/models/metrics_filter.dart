import 'package:uni_storage_base/src/models/metrics_and_operator.dart';
import 'package:uni_storage_base/src/models/tag.dart';

/// Specifies a metrics configuration filter. The metrics configuration only includes objects that meet the filter's criteria. A filter must be a prefix, an object tag, an access point ARN, or a conjunction (MetricsAndOperator). For more information, see PutBucketMetricsConfiguration.
class MetricsFilter {
  MetricsFilter({
    this.accessPointArn,
    this.and,
    this.prefix,
    this.tag,
  });

  final String? accessPointArn;
  final MetricsAndOperator? and;
  final String? prefix;
  final Tag? tag;
}
