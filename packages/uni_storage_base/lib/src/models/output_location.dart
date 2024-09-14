import 'package:uni_storage_base/src/models/s3_location.dart';

/// Describes the location where the restore job's output is stored.
class OutputLocation {
  OutputLocation({
    this.s3,
  });

  final S3Location? s3;
}
