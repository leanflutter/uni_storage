import 'package:s3_api_base/src/types/object_identifier.dart';

/// Container for the objects to delete.
class Delete {
  Delete({
    required this.objects,
    this.quiet,
  });

  /// The object to delete.
  final List<ObjectIdentifier> objects;

  /// Element to enable quiet mode for the request. When you add this element,
  /// you must set its value to true.
  final bool? quiet;
}
