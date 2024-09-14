import 'package:uni_storage_base/src/models/intelligent_tiering_and_operator.dart';
import 'package:uni_storage_base/src/models/tag.dart';

/// The Filter is used to identify objects that the S3 Intelligent-Tiering configuration applies to.
class IntelligentTieringFilter {
  IntelligentTieringFilter({
    this.and,
    this.prefix,
    this.tag,
  });

  final IntelligentTieringAndOperator? and;
  final String? prefix;
  final Tag? tag;
}
