import 'package:uni_storage_base/src/models/ownership_controls_rule.dart';

/// The container element for a bucket's ownership controls.
class OwnershipControls {
  OwnershipControls({
  required  this.rules,
  });

  final List<OwnershipControlsRule> rules;
}
