/// Container element that identifies who initiated the multipart upload.
class Initiator {
  Initiator({
    this.displayName,
    this.id,
  });

  /// Name of the Principal.
  final String? displayName;

  /// If the principal is an AWS account, it provides the Canonical User ID. If
  /// the principal is an IAM User, it provides a user ARN value.
  final String? id;
}
