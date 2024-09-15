/// Container for the person being granted permissions.
class Grantee {
  Grantee({
    required this.type,
    this.displayName,
    this.emailAddress,
    this.id,
    this.uri,
  });

  /// Type of grantee
  final String type;

  /// Screen name of the grantee.
  final String? displayName;

  /// Email address of the grantee.
  final String? emailAddress;

  /// The canonical user ID of the grantee.
  final String? id;

  /// URI of the grantee group.
  final String? uri;
}
