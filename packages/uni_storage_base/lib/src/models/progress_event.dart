import 'package:uni_storage_base/src/models/progress.dart';

/// This data type contains information about the progress event of an operation.
class ProgressEvent {
  ProgressEvent({
    this.details,
  });

  final Progress? details;
}
