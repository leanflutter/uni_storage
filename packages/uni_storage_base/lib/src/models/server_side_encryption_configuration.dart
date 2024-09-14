import 'package:uni_storage_base/src/models/server_side_encryption_rule.dart';

/// Specifies the default server-side-encryption configuration.
class ServerSideEncryptionConfiguration {
  ServerSideEncryptionConfiguration({
  required  this.rules,
  });

  final List<ServerSideEncryptionRule> rules;
}
