import 'package:s3_api_base/src/types/intelligent_tiering_configuration.dart';

/// Root level tag for the ListBucketIntelligentTieringConfigurationsOutput
/// parameters.
class ListBucketIntelligentTieringConfigurationsOutput {
  ListBucketIntelligentTieringConfigurationsOutput({
    this.continuationToken,
    this.intelligentTieringConfiguration,
    this.isTruncated,
    this.nextContinuationToken,
  });

  /// The ContinuationToken that represents a placeholder from where this
  /// request should begin.
  final String? continuationToken;

  /// The list of S3 Intelligent-Tiering configurations for a bucket.
  final List<IntelligentTieringConfiguration>? intelligentTieringConfiguration;

  /// Indicates whether the returned list of analytics configurations is
  /// complete. A value of true indicates that the list is not complete and the
  /// NextContinuationToken will be provided for a subsequent request.
  final bool? isTruncated;

  /// The marker used to continue this inventory configuration listing. Use the
  /// NextContinuationToken from this response to continue the listing in a
  /// subsequent request. The continuation token is an opaque value that Amazon
  /// S3 understands.
  final String? nextContinuationToken;
}

/// This operation is not supported by directory buckets.
abstract mixin class ListBucketIntelligentTieringConfigurationsOperation {
  Future<dynamic> listBucketIntelligentTieringConfigurations({
    /// The name of the Amazon S3 bucket whose configuration you want to modify
    /// or retrieve.
    String bucket,

    /// The ContinuationToken that represents a placeholder from where this
    /// request should begin.
    String? continuationToken,
  });
}
