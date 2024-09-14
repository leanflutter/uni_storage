import 'package:uni_storage_base/src/models/glacier_job_parameters.dart';
import 'package:uni_storage_base/src/models/output_location.dart';
import 'package:uni_storage_base/src/models/select_parameters.dart';

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

  final int? days;
  final String? description;
  final GlacierJobParameters? glacierJobParameters;
  final OutputLocation? outputLocation;
  final SelectParameters? selectParameters;
  final String? tier;
  final String? type;
}
