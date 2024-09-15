import 'package:s3_api_base/src/types/ssekms.dart';
import 'package:s3_api_base/src/types/sses3.dart';

/// Contains the type of server-side encryption used to encrypt the inventory
/// results.
class InventoryEncryption {
  InventoryEncryption({
    this.ssekms,
    this.sses3,
  });

  /// Specifies the use of SSE-KMS to encrypt delivered inventory reports.
  final SSEKMS? ssekms;

  /// Specifies the use of SSE-S3 to encrypt delivered inventory reports.
  final SSES3? sses3;
}
