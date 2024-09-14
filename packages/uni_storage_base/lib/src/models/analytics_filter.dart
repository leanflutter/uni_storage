import 'package:uni_storage_base/src/models/analytics_and_operator.dart';
import 'package:uni_storage_base/src/models/tag.dart';

/// The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.
class AnalyticsFilter {
  AnalyticsFilter({
    this.and,
    this.prefix,
    this.tag,
  });

  final AnalyticsAndOperator? and;
  final String? prefix;
  final Tag? tag;
}
