/// This operation is not supported by directory buckets.
abstract mixin class PutBucketNotificationConfigurationOperation {
  Future<dynamic> putBucketNotificationConfiguration({
    /// The name of the bucket.
    String bucket,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Skips validation of Amazon SQS, Amazon SNS, and AWS Lambda destinations.
    /// True or false value.
    String? skipDestinationValidation,
  });
}
