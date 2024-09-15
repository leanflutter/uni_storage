/// Specifies whether Amazon S3 replicates delete markers. If you specify a
/// Filter in your replication configuration, you must also include a
/// DeleteMarkerReplication element. If your Filter includes a Tag element, the
/// DeleteMarkerReplication Status must be set to Disabled, because Amazon S3
/// does not support replicating delete markers for tag-based rules. For an
/// example configuration, see Basic Rule Configuration.
class DeleteMarkerReplication {
  DeleteMarkerReplication({
    this.status,
  });

  /// Indicates whether to replicate delete markers.
  final String? status;
}
