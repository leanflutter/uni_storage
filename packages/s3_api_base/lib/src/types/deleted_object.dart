/// Information about the deleted object.
class DeletedObject {
  DeletedObject({
    this.deleteMarker,
    this.deleteMarkerVersionId,
    this.key,
    this.versionId,
  });

  /// Indicates whether the specified object version that was permanently
  /// deleted was (true) or was not (false) a delete marker before deletion. In
  /// a simple DELETE, this header indicates whether (true) or not (false) the
  /// current version of the object is a delete marker.
  final bool? deleteMarker;

  /// The version ID of the delete marker created as a result of the DELETE
  /// operation. If you delete a specific object version, the value returned by
  /// this header is the version ID of the object version deleted.
  final String? deleteMarkerVersionId;

  /// The name of the deleted object.
  final String? key;

  /// The version ID of the deleted object.
  final String? versionId;
}
