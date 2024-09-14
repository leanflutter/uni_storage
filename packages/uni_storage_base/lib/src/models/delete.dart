import 'package:uni_storage_base/src/models/object_identifier.dart';

/// Container for the objects to delete.
class Delete {
  Delete({
  required  this.objects,
    this.quiet,
  });

  final List<ObjectIdentifier> objects;
  final bool? quiet;
}
