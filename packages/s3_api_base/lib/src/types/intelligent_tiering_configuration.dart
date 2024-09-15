import 'package:s3_api_base/src/types/intelligent_tiering_filter.dart';
import 'package:s3_api_base/src/types/tiering.dart';

/// Specifies the S3 Intelligent-Tiering configuration for an Amazon S3 bucket.
class IntelligentTieringConfiguration {
  IntelligentTieringConfiguration({
    required this.id,
    required this.status,
    required this.tierings,
    this.filter,
  });

  /// The ID used to identify the S3 Intelligent-Tiering configuration.
  final String id;

  /// Specifies the status of the configuration.
  final String status;

  /// Specifies the S3 Intelligent-Tiering storage class tier of the
  /// configuration.
  final Tiering tierings;

  /// Specifies a bucket filter. The configuration only includes objects that
  /// meet the filter's criteria.
  final IntelligentTieringFilter? filter;
}
