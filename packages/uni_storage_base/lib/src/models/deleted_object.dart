/// Information about the deleted object.
class DeletedObject {
  DeletedObject({
    this.deleteMarker,
    this.deleteMarkerVersionId,
    this.key,
    this.versionId,
  });

  final bool? deleteMarker;
  final String? deleteMarkerVersionId;
  final String? key;
  final String? versionId;
}
