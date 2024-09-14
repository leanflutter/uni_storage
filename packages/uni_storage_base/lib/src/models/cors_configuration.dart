import 'package:uni_storage_base/src/models/cors_rule.dart';

/// Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information, see Enabling Cross-Origin Resource Sharing in the Amazon S3 User Guide.
class CORSConfiguration {
  CORSConfiguration({
  required  this.cORSRules,
  });

  final List<CORSRule> cORSRules;
}
