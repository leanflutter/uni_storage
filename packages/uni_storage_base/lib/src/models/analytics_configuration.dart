import 'package:uni_storage_base/src/models/analytics_filter.dart';
import 'package:uni_storage_base/src/models/storage_class_analysis.dart';

/// Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.
class AnalyticsConfiguration {
  AnalyticsConfiguration({
  required  this.id,
  required  this.storageClassAnalysis,
    this.filter,
  });

  final String id;
  final StorageClassAnalysis storageClassAnalysis;
  final AnalyticsFilter? filter;
}
