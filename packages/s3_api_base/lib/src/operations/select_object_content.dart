import 'package:s3_api_base/src/types/continuation_event.dart';
import 'package:s3_api_base/src/types/end_event.dart';
import 'package:s3_api_base/src/types/progress_event.dart';
import 'package:s3_api_base/src/types/records_event.dart';
import 'package:s3_api_base/src/types/stats_event.dart';

/// Root level tag for the Payload parameters.
class Payload {
  Payload({
    this.cont,
    this.end,
    this.progress,
    this.records,
    this.stats,
  });

  /// The Continuation Event.
  final ContinuationEvent? cont;

  /// The End Event.
  final EndEvent? end;

  /// The Progress Event.
  final ProgressEvent? progress;

  /// The Records Event.
  final RecordsEvent? records;

  /// The Stats Event.
  final StatsEvent? stats;
}

/// This operation is not supported by directory buckets.
abstract mixin class SelectObjectContentOperation {
  Future<Payload> selectObjectContent({
    /// The S3 bucket.
    required String bucket,

    /// The object key.
    required String key,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// The server-side encryption (SSE) algorithm used to encrypt the object.
    /// This parameter is needed only when the object was created using a
    /// checksum algorithm. For more information, see Protecting data using
    /// SSE-C keys in the Amazon S3 User Guide.
    String? serverSideEncryptionCustomerAlgorithm,

    /// The server-side encryption (SSE) customer managed key. This parameter is
    /// needed only when the object was created using a checksum algorithm. For
    /// more information, see Protecting data using SSE-C keys in the Amazon S3
    /// User Guide.
    String? serverSideEncryptionCustomerKey,

    /// The MD5 server-side encryption (SSE) customer managed key. This
    /// parameter is needed only when the object was created using a checksum
    /// algorithm. For more information, see Protecting data using SSE-C keys in
    /// the Amazon S3 User Guide.
    String? serverSideEncryptionCustomerKeyMD5,
  });
}
