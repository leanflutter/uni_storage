import 'package:uni_storage_base/src/models/tag.dart';

/// A container for specifying S3 Intelligent-Tiering filters. The filters determine the subset of objects to which the rule applies.
class IntelligentTieringAndOperator {
  IntelligentTieringAndOperator({
    this.prefix,
    this.tags,
  });

  final String? prefix;
  final List<Tag>? tags;
}
