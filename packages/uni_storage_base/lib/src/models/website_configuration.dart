import 'package:uni_storage_base/src/models/error_document.dart';
import 'package:uni_storage_base/src/models/index_document.dart';
import 'package:uni_storage_base/src/models/redirect_all_requests_to.dart';
import 'package:uni_storage_base/src/models/routing_rule.dart';

/// Specifies website configuration parameters for an Amazon S3 bucket.
class WebsiteConfiguration {
  WebsiteConfiguration({
    this.errorDocument,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.routingRules,
  });

  final ErrorDocument? errorDocument;
  final IndexDocument? indexDocument;
  final RedirectAllRequestsTo? redirectAllRequestsTo;
  final List<RoutingRule>? routingRules;
}
