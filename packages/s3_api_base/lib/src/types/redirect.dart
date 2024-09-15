/// Specifies how requests are redirected. In the event of an error, you can
/// specify a different error code to return.
class Redirect {
  Redirect({
    this.hostName,
    this.httpRedirectCode,
    this.protocol,
    this.replaceKeyPrefixWith,
    this.replaceKeyWith,
  });

  /// The host name to use in the redirect request.
  final String? hostName;

  /// The HTTP redirect code to use on the response. Not required if one of the
  /// siblings is present.
  final String? httpRedirectCode;

  /// Protocol to use when redirecting requests. The default is the protocol
  /// that is used in the original request.
  final String? protocol;

  /// The object key prefix to use in the redirect request. For example, to
  /// redirect requests for all pages with prefix docs/ (objects in the docs/
  /// folder) to documents/, you can set a condition block with KeyPrefixEquals
  /// set to docs/ and in the Redirect set ReplaceKeyPrefixWith to /documents.
  /// Not required if one of the siblings is present. Can be present only if
  /// ReplaceKeyWith is not provided.
  final String? replaceKeyPrefixWith;

  /// The specific object key to use in the redirect request. For example,
  /// redirect request to error.html. Not required if one of the siblings is
  /// present. Can be present only if ReplaceKeyPrefixWith is not provided.
  final String? replaceKeyWith;
}
