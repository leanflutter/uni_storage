import 'package:s3_api_base/src/types/tag.dart';

/// Container for TagSet elements.
class Tagging {
  Tagging({
    required this.tagSet,
  });

  /// A collection for a set of tags
  final Tag tagSet;
}
