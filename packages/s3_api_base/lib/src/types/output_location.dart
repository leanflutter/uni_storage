import 'package:s3_api_base/src/types/s3_location.dart';

/// Describes the location where the restore job's output is stored.
class OutputLocation {
  OutputLocation({
    this.s3,
  });

  /// Describes an S3 location that will receive the results of the restore
  /// request.
  final S3Location? s3;
}
