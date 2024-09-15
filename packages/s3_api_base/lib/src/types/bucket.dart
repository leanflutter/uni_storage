///  In terms of implementation, a Bucket is a resource.
class Bucket {
  Bucket({
    this.creationDate,
    this.name,
  });

  /// Date the bucket was created. This date can change when making changes to
  /// your bucket, such as editing its bucket policy.
  final DateTime? creationDate;

  /// The name of the bucket.
  final String? name;
}
