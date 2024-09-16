/// Root level tag for the RequestPaymentConfiguration parameters.
class RequestPaymentConfiguration {
  RequestPaymentConfiguration({
    this.payer,
  });

  /// Specifies who pays for the download and request fees.
  final String? payer;
}

/// This operation is not supported by directory buckets.
abstract mixin class GetBucketRequestPaymentOperation {
  Future<dynamic> getBucketRequestPayment({
    /// The name of the bucket for which to get the payment request
    /// configuration
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,
  });
}
