import 'package:uni_storage_base/src/models/intelligent_tiering_filter.dart';
import 'package:uni_storage_base/src/models/tiering.dart';

/// Specifies the S3 Intelligent-Tiering configuration for an Amazon S3 bucket.
class IntelligentTieringConfiguration {
  IntelligentTieringConfiguration({
  required  this.id,
  required  this.status,
  required  this.tierings,
    this.filter,
  });

  final String id;
  final String status;
  final List<Tiering> tierings;
  final IntelligentTieringFilter? filter;
}
