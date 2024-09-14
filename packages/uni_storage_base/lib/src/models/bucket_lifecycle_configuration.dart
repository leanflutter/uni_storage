import 'package:uni_storage_base/src/models/lifecycle_rule.dart';

/// Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see Object Lifecycle Management in the Amazon S3 User Guide.
class BucketLifecycleConfiguration {
  BucketLifecycleConfiguration({
  required  this.rules,
  });

  final List<LifecycleRule> rules;
}
