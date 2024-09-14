/// Contains the type of server-side encryption used.
class Encryption {
  Encryption({
  required  this.encryptionType,
    this.kMSContext,
    this.kMSKeyId,
  });

  final String encryptionType;
  final String? kMSContext;
  final String? kMSKeyId;
}
