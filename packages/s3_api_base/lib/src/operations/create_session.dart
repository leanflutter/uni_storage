import 'package:s3_api_base/src/types/session_credentials.dart';

/// Root level tag for the CreateSessionOutput parameters.
class CreateSessionOutput {
  CreateSessionOutput({
    this.credentials,
  });

  /// The established temporary security credentials for the created session.
  final SessionCredentials? credentials;
}

/// Creates a session that establishes temporary security credentials to support
/// fast authentication and authorization for the Zonal endpoint APIs on
/// directory buckets. For more information about Zonal endpoint APIs that
/// include the Availability Zone in the request endpoint, see S3 Express One
/// Zone APIs in the Amazon S3 User Guide.
abstract mixin class CreateSessionOperation {
  Future<CreateSessionOutput> createSession({
    /// The name of the bucket that you create a session for.
    String bucket,

    /// Specifies the mode of the session that will be created, either ReadWrite
    /// or ReadOnly. By default, a ReadWrite session is created. A ReadWrite
    /// session is capable of executing all the Zonal endpoint APIs on a
    /// directory bucket. A ReadOnly session is constrained to execute the
    /// following Zonal endpoint APIs: GetObject, HeadObject, ListObjectsV2,
    /// GetObjectAttributes, ListParts, and ListMultipartUploads.
    String? createSessionMode,
  });
}
