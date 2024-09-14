import 'package:uni_storage_base/src/models/ssekms.dart';
import 'package:uni_storage_base/src/models/sses3.dart';

/// Contains the type of server-side encryption used to encrypt the inventory results.
class InventoryEncryption {
  InventoryEncryption({
    this.sSEKMS,
    this.sSES3,
  });

  final SSEKMS? sSEKMS;
  final SSES3? sSES3;
}
