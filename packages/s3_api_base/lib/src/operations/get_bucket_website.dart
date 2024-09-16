import 'package:s3_api_base/src/types/error_document.dart';
import 'package:s3_api_base/src/types/index_document.dart';
import 'package:s3_api_base/src/types/redirect_all_requests_to.dart';
import 'package:s3_api_base/src/types/routing_rule.dart';

/// Root level tag for the WebsiteConfiguration parameters.
class WebsiteConfiguration {
  WebsiteConfiguration({
    this.errorDocument,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.routingRules,
  });

  /// The object key name of the website error document to use for 4XX class
  /// errors.
  final ErrorDocument? errorDocument;

  /// The name of the index document for the website (for example index.html).
  final IndexDocument? indexDocument;

  /// Specifies the redirect behavior of all requests to a website endpoint of
  /// an Amazon S3 bucket.
  final RedirectAllRequestsTo? redirectAllRequestsTo;

  /// Rules that define when a redirect is applied and the redirect behavior.
  final List<RoutingRule>? routingRules;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketWebsiteOperation {
  Future<WebsiteConfiguration> getBucketWebsite({
    /// The bucket name for which to get the website configuration.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
