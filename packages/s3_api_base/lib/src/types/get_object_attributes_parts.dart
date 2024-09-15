import 'package:s3_api_base/src/types/object_part.dart';

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

  /// Indicates whether the returned list of parts is truncated. A value of true
  /// indicates that the list was truncated. A list can be truncated if the
  /// number of parts exceeds the limit returned in the MaxParts element.
  final bool? isTruncated;

  /// The maximum number of parts allowed in the response.
  final int? maxParts;

  /// When a list is truncated, this element specifies the last part in the
  /// list, as well as the value to use for the PartNumberMarker request
  /// parameter in a subsequent request.
  final int? nextPartNumberMarker;

  /// The marker for the current part.
  final int? partNumberMarker;

  /// A container for elements related to a particular part. A response can
  /// contain zero or more Parts elements.
  final ObjectPart? parts;

  /// The total number of parts.
  final int? totalPartsCount;
}
