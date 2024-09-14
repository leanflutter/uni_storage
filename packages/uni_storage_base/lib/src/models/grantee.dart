/// Container for the person being granted permissions.
class Grantee {
  Grantee({
  required  this.type,
    this.displayName,
    this.emailAddress,
    this.iD,
    this.uRI,
  });

  final String type;
  final String? displayName;
  final String? emailAddress;
  final String? iD;
  final String? uRI;
}
