import 'package:s3_api_base/src/types/glacier_job_parameters.dart';
import 'package:s3_api_base/src/types/output_location.dart';
import 'package:s3_api_base/src/types/select_parameters.dart';

/// Container for restore job parameters.
class RestoreRequest {
  RestoreRequest({
    this.days,
    this.description,
    this.glacierJobParameters,
    this.outputLocation,
    this.selectParameters,
    this.tier,
    this.type,
  });

  /// Lifetime of the active copy in days. Do not use with restores that specify
  /// OutputLocation.
  final int? days;

  /// The optional description for the job.
  final String? description;

  /// S3 Glacier related parameters pertaining to this job. Do not use with
  /// restores that specify OutputLocation.
  final GlacierJobParameters? glacierJobParameters;

  /// Describes the location where the restore job's output is stored.
  final OutputLocation? outputLocation;

  /// Amazon S3 Select is no longer available to new customers. Existing
  /// customers of Amazon S3 Select can continue to use the feature as usual.
  /// Learn more
  final SelectParameters? selectParameters;

  /// Retrieval tier at which the restore will be processed.
  final String? tier;

  /// Amazon S3 Select is no longer available to new customers. Existing
  /// customers of Amazon S3 Select can continue to use the feature as usual.
  /// Learn more
  final String? type;
}
