import 'package:s3_api_base/src/types/s3_key_filter.dart';

/// Specifies object key name filtering rules. For information about key name
/// filtering, see Configuring event notifications using object key name
/// filtering in the Amazon S3 User Guide.
class NotificationConfigurationFilter {
  NotificationConfigurationFilter({
    this.key,
  });

  /// A container for object key name prefix and suffix filtering rules.
  final S3KeyFilter? key;
}
