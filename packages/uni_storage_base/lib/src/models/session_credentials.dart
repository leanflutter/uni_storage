/// The established temporary security credentials of the session.
class SessionCredentials {
  SessionCredentials({
  required  this.accessKeyId,
  required  this.expiration,
  required  this.secretAccessKey,
  required  this.sessionToken,
  });

  final String accessKeyId;
  final DateTime expiration;
  final String secretAccessKey;
  final String sessionToken;
}
