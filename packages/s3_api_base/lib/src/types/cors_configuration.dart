import 'package:s3_api_base/src/types/cors_rule.dart';

/// Describes the cross-origin access configuration for objects in an Amazon S3
/// bucket. For more information, see Enabling Cross-Origin Resource Sharing in
/// the Amazon S3 User Guide.
class CORSConfiguration {
  CORSConfiguration({
    required this.cORSRules,
  });

  /// A set of origins and methods (cross-origin access that you want to allow).
  /// You can add up to 100 rules to the configuration.
  final List<CORSRule> cORSRules;
}
