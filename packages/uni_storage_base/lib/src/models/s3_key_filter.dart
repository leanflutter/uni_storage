import 'package:uni_storage_base/src/models/filter_rule.dart';

/// A container for object key name prefix and suffix filtering rules.
class S3KeyFilter {
  S3KeyFilter({
    this.filterRules,
  });

  final List<FilterRule>? filterRules;
}
