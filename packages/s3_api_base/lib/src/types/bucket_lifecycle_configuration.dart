import 'package:s3_api_base/src/types/lifecycle_rule.dart';

/// Specifies the lifecycle configuration for objects in an Amazon S3 bucket.
/// For more information, see Object Lifecycle Management in the Amazon S3 User
/// Guide.
class BucketLifecycleConfiguration {
  BucketLifecycleConfiguration({
    required this.rules,
  });

  /// A lifecycle rule for individual objects in an Amazon S3 bucket.
  final LifecycleRule rules;
}
