import 'package:uni_storage_base/src/models/storage_class_analysis_data_export.dart';

/// Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
class StorageClassAnalysis {
  StorageClassAnalysis({
    this.dataExport,
  });

  final StorageClassAnalysisDataExport? dataExport;
}
