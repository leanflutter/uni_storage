import 'package:s3_api_base/src/types/error_document.dart';
import 'package:s3_api_base/src/types/index_document.dart';
import 'package:s3_api_base/src/types/redirect_all_requests_to.dart';
import 'package:s3_api_base/src/types/routing_rule.dart';

/// Specifies website configuration parameters for an Amazon S3 bucket.
class WebsiteConfiguration {
  WebsiteConfiguration({
    this.errorDocument,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.routingRules,
  });

  /// The name of the error document for the website.
  final ErrorDocument? errorDocument;

  /// The name of the index document for the website.
  final IndexDocument? indexDocument;

  /// The redirect behavior for every request to this bucket's website endpoint.
  final RedirectAllRequestsTo? redirectAllRequestsTo;

  /// Rules that define when a redirect is applied and the redirect behavior.
  final List<RoutingRule>? routingRules;
}
