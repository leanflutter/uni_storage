import 'package:s3_api_base/src/types/server_side_encryption_by_default.dart';

/// Specifies the default server-side encryption configuration.
class ServerSideEncryptionRule {
  ServerSideEncryptionRule({
    this.applyServerSideEncryptionByDefault,
    this.bucketKeyEnabled,
  });

  /// Specifies the default server-side encryption to apply to new objects in
  /// the bucket. If a PUT Object request doesn't specify any server-side
  /// encryption, this default encryption will be applied.
  final ServerSideEncryptionByDefault? applyServerSideEncryptionByDefault;

  /// Specifies whether Amazon S3 should use an S3 Bucket Key with server-side
  /// encryption using KMS (SSE-KMS) for new objects in the bucket. Existing
  /// objects are not affected. Setting the BucketKeyEnabled element to true
  /// causes Amazon S3 to use an S3 Bucket Key. By default, S3 Bucket Key is not
  /// enabled.
  final bool? bucketKeyEnabled;
}
