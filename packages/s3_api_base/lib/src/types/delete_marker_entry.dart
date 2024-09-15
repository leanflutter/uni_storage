import 'package:s3_api_base/src/types/owner.dart';

/// Information about the delete marker.
class DeleteMarkerEntry {
  DeleteMarkerEntry({
    this.isLatest,
    this.key,
    this.lastModified,
    this.owner,
    this.versionId,
  });

  /// Specifies whether the object is (true) or is not (false) the latest
  /// version of an object.
  final bool? isLatest;

  /// The object key.
  final String? key;

  /// Date and time when the object was last modified.
  final DateTime? lastModified;

  /// The account that created the delete marker.>
  final Owner? owner;

  /// Version ID of an object.
  final String? versionId;
}
