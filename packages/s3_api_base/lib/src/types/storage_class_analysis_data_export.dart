import 'package:s3_api_base/src/types/analytics_export_destination.dart';

/// Container for data related to the storage class analysis for an Amazon S3
/// bucket for export.
class StorageClassAnalysisDataExport {
  StorageClassAnalysisDataExport({
    required this.destination,
    required this.outputSchemaVersion,
  });

  /// The place to store the data for an analysis.
  final AnalyticsExportDestination destination;

  /// The version of the output schema to use when exporting data. Must be V_1.
  final String outputSchemaVersion;
}
