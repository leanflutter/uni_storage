import 'package:s3_api_base/src/types/completed_part.dart';

/// The container for the completed multipart upload details.
class CompletedMultipartUpload {
  CompletedMultipartUpload({
    this.parts,
  });

  /// Array of CompletedPart data types.
  final List<CompletedPart>? parts;
}
