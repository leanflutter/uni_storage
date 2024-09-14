import 'package:uni_storage_base/src/models/analytics_export_destination.dart';

/// Container for data related to the storage class analysis for an Amazon S3 bucket for export.
class StorageClassAnalysisDataExport {
  StorageClassAnalysisDataExport({
  required  this.destination,
  required  this.outputSchemaVersion,
  });

  final AnalyticsExportDestination destination;
  final String outputSchemaVersion;
}
