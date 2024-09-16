import 'package:s3_api_base/src/types/ownership_controls_rule.dart';

/// The container element for a bucket's ownership controls.
class OwnershipControls {
  OwnershipControls({
    required this.rules,
  });

  /// The container element for an ownership control rule.
  final List<OwnershipControlsRule> rules;
}
