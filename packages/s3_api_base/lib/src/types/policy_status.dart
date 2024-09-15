/// The container element for a bucket's policy status.
class PolicyStatus {
  PolicyStatus({
    this.isPublic,
  });

  /// The policy status for this bucket. TRUE indicates that this bucket is
  /// public. FALSE indicates that the bucket is not public.
  final bool? isPublic;
}
