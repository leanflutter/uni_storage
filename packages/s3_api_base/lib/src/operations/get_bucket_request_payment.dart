import 'package:s3_api_base/src/types/request_payment_configuration.dart';

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketRequestPaymentOperation {
  Future<RequestPaymentConfiguration> getBucketRequestPayment({
    /// The name of the bucket for which to get the payment request
    /// configuration
    required String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
