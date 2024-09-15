import 'package:s3_api_base/src/types/storage_class_analysis_data_export.dart';

/// Specifies data related to access patterns to be collected and made available
/// to analyze the tradeoffs between different storage classes for an Amazon S3
/// bucket.
class StorageClassAnalysis {
  StorageClassAnalysis({
    this.dataExport,
  });

  /// Specifies how data related to the storage class analysis for an Amazon S3
  /// bucket should be exported.
  final StorageClassAnalysisDataExport? dataExport;
}
