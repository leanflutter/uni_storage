import 'package:s3_api_base/src/types/analytics_filter.dart';
import 'package:s3_api_base/src/types/storage_class_analysis.dart';

/// Root level tag for the AnalyticsConfiguration parameters.
class AnalyticsConfiguration {
  AnalyticsConfiguration({
    this.filter,
    this.id,
    this.storageClassAnalysis,
  });

  /// The filter used to describe a set of objects for analyses. A filter must
  /// have exactly one prefix, one tag, or one conjunction
  /// (AnalyticsAndOperator). If no filter is provided, all objects will be
  /// considered in any analysis.
  final AnalyticsFilter? filter;

  /// The ID that identifies the analytics configuration.
  final String? id;

  ///  Contains data related to access patterns to be collected and made
  /// available to analyze the tradeoffs between different storage classes.
  final StorageClassAnalysis? storageClassAnalysis;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketAnalyticsConfigurationOperation {
  Future<dynamic> getBucketAnalyticsConfiguration({
    /// The name of the bucket from which an analytics configuration is
    /// retrieved.
    String bucket,

    /// The ID that identifies the analytics configuration.
    String id,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
