import 'package:s3_api_base/src/types/rule.dart';

/// Container for lifecycle rules. You can add as many as 1000 rules.
class LifecycleConfiguration {
  LifecycleConfiguration({
    required this.rules,
  });

  /// Specifies lifecycle configuration rules for an Amazon S3 bucket.
  final List<Rule> rules;
}
