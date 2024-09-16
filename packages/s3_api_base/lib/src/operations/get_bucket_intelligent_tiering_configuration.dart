import 'package:s3_api_base/src/types/intelligent_tiering_filter.dart';
import 'package:s3_api_base/src/types/tiering.dart';

/// Root level tag for the IntelligentTieringConfiguration parameters.
class IntelligentTieringConfiguration {
  IntelligentTieringConfiguration({
    this.filter,
    this.id,
    this.status,
    this.tiering,
  });

  /// Specifies a bucket filter. The configuration only includes objects that
  /// meet the filter's criteria.
  final IntelligentTieringFilter? filter;

  /// The ID used to identify the S3 Intelligent-Tiering configuration.
  final String? id;

  /// Specifies the status of the configuration.
  final String? status;

  /// Specifies the S3 Intelligent-Tiering storage class tier of the
  /// configuration.
  final List<Tiering>? tiering;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketIntelligentTieringConfigurationOperation {
  Future<IntelligentTieringConfiguration> getBucketIntelligentTieringConfiguration({
    /// The name of the Amazon S3 bucket whose configuration you want to modify
    /// or retrieve.
    String bucket,

    /// The ID used to identify the S3 Intelligent-Tiering configuration.
    String id,
  });
}
