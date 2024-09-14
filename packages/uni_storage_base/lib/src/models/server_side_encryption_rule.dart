import 'package:uni_storage_base/src/models/server_side_encryption_by_default.dart';

/// Specifies the default server-side encryption configuration.
class ServerSideEncryptionRule {
  ServerSideEncryptionRule({
    this.applyServerSideEncryptionByDefault,
    this.bucketKeyEnabled,
  });

  final ServerSideEncryptionByDefault? applyServerSideEncryptionByDefault;
  final bool? bucketKeyEnabled;
}
