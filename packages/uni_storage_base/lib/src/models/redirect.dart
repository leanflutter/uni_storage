/// Specifies how requests are redirected. In the event of an error, you can specify a different error code to return.
class Redirect {
  Redirect({
    this.hostName,
    this.httpRedirectCode,
    this.protocol,
    this.replaceKeyPrefixWith,
    this.replaceKeyWith,
  });

  final String? hostName;
  final String? httpRedirectCode;
  final String? protocol;
  final String? replaceKeyPrefixWith;
  final String? replaceKeyWith;
}
