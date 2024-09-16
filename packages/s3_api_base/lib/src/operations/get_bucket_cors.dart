import 'package:s3_api_base/src/types/cors_rule.dart';

/// Root level tag for the CORSConfiguration parameters.
class CORSConfiguration {
  CORSConfiguration({
    this.cORSRule,
  });

  /// A set of origins and methods (cross-origin access that you want to allow).
  /// You can add up to 100 rules to the configuration.
  final List<CORSRule>? cORSRule;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketCorsOperation {
  Future<CORSConfiguration> getBucketCors({
    /// The bucket name for which to get the cors configuration.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
