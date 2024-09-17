import 'package:s3_api_base/src/types/intelligent_tiering_configuration.dart';

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketIntelligentTieringConfigurationOperation {
  Future<IntelligentTieringConfiguration> getBucketIntelligentTieringConfiguration({
    /// The name of the Amazon S3 bucket whose configuration you want to modify
    /// or retrieve.
    required String bucket,

    /// The ID used to identify the S3 Intelligent-Tiering configuration.
    required String id,
  });
}
