import 'package:uni_storage_base/src/models/object_part.dart';

/// A collection of parts associated with a multipart upload.
class GetObjectAttributesParts {
  GetObjectAttributesParts({
    this.isTruncated,
    this.maxParts,
    this.nextPartNumberMarker,
    this.partNumberMarker,
    this.parts,
    this.totalPartsCount,
  });

  final bool? isTruncated;
  final int? maxParts;
  final int? nextPartNumberMarker;
  final int? partNumberMarker;
  final List<ObjectPart>? parts;
  final int? totalPartsCount;
}
