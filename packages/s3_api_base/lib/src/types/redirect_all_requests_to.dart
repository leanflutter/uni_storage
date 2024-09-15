/// Specifies the redirect behavior of all requests to a website endpoint of an
/// Amazon S3 bucket.
class RedirectAllRequestsTo {
  RedirectAllRequestsTo({
    required this.hostName,
    this.protocol,
  });

  /// Name of the host where requests are redirected.
  final String hostName;

  /// Protocol to use when redirecting requests. The default is the protocol
  /// that is used in the original request.
  final String? protocol;
}
