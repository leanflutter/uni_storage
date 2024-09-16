import 'package:s3_api_base/src/types/filter_rule.dart';

/// A container for object key name prefix and suffix filtering rules.
class S3KeyFilter {
  S3KeyFilter({
    this.filterRules,
  });

  /// A list of containers for the key-value pair that defines the criteria for
  /// the filter rule.
  final List<FilterRule>? filterRules;
}
