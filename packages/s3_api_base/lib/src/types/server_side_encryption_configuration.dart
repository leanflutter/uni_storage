import 'package:s3_api_base/src/types/server_side_encryption_rule.dart';

/// Specifies the default server-side-encryption configuration.
class ServerSideEncryptionConfiguration {
  ServerSideEncryptionConfiguration({
    required this.rules,
  });

  /// Container for information about a particular server-side encryption
  /// configuration rule.
  final ServerSideEncryptionRule rules;
}
