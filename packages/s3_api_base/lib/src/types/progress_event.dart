import 'package:s3_api_base/src/types/progress.dart';

/// This data type contains information about the progress event of an
/// operation.
class ProgressEvent {
  ProgressEvent({
    this.details,
  });

  /// The Progress event details.
  final Progress? details;
}
