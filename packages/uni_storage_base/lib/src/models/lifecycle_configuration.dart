import 'package:uni_storage_base/src/models/rule.dart';

/// Container for lifecycle rules. You can add as many as 1000 rules.
class LifecycleConfiguration {
  LifecycleConfiguration({
  required  this.rules,
  });

  final List<Rule> rules;
}
