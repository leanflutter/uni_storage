import 'package:s3_api_base/src/types/analytics_filter.dart';
import 'package:s3_api_base/src/types/storage_class_analysis.dart';

/// Specifies the configuration and any analyses for the analytics filter of an
/// Amazon S3 bucket.
class AnalyticsConfiguration {
  AnalyticsConfiguration({
    required this.id,
    required this.storageClassAnalysis,
    this.filter,
  });

  /// The ID that identifies the analytics configuration.
  final String id;

  ///  Contains data related to access patterns to be collected and made
  /// available to analyze the tradeoffs between different storage classes.
  final StorageClassAnalysis storageClassAnalysis;

  /// The filter used to describe a set of objects for analyses. A filter must
  /// have exactly one prefix, one tag, or one conjunction
  /// (AnalyticsAndOperator). If no filter is provided, all objects will be
  /// considered in any analysis.
  final AnalyticsFilter? filter;
}
