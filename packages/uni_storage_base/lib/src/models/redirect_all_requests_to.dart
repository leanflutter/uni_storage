/// Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
class RedirectAllRequestsTo {
  RedirectAllRequestsTo({
  required  this.hostName,
    this.protocol,
  });

  final String hostName;
  final String? protocol;
}
