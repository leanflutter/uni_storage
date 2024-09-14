import 'package:uni_storage_base/src/models/owner.dart';

/// Information about the delete marker.
class DeleteMarkerEntry {
  DeleteMarkerEntry({
    this.isLatest,
    this.key,
    this.lastModified,
    this.owner,
    this.versionId,
  });

  final bool? isLatest;
  final String? key;
  final DateTime? lastModified;
  final Owner? owner;
  final String? versionId;
}
