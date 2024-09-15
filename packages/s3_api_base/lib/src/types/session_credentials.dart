/// The established temporary security credentials of the session.
class SessionCredentials {
  SessionCredentials({
    required this.accessKeyId,
    required this.expiration,
    required this.secretAccessKey,
    required this.sessionToken,
  });

  /// A unique identifier that's associated with a secret access key. The access
  /// key ID and the secret access key are used together to sign programmatic
  /// AWS requests cryptographically.
  final String accessKeyId;

  /// Temporary security credentials expire after a specified interval. After
  /// temporary credentials expire, any calls that you make with those
  /// credentials will fail. So you must generate a new set of temporary
  /// credentials. Temporary credentials cannot be extended or refreshed beyond
  /// the original specified interval.
  final DateTime expiration;

  /// A key that's used with the access key ID to cryptographically sign
  /// programmatic AWS requests. Signing a request identifies the sender and
  /// prevents the request from being altered.
  final String secretAccessKey;

  /// A part of the temporary security credentials. The session token is used to
  /// validate the temporary security credentials.
  final String sessionToken;
}
