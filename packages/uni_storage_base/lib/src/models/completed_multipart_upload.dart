import 'package:uni_storage_base/src/models/completed_part.dart';

/// The container for the completed multipart upload details.
class CompletedMultipartUpload {
  CompletedMultipartUpload({
    this.parts,
  });

  final List<CompletedPart>? parts;
}
