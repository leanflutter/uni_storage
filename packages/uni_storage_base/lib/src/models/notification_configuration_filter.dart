import 'package:uni_storage_base/src/models/s3_key_filter.dart';

/// Specifies object key name filtering rules. For information about key name filtering, see Configuring event notifications using object key name filtering in the Amazon S3 User Guide.
class NotificationConfigurationFilter {
  NotificationConfigurationFilter({
    this.key,
  });

  final S3KeyFilter? key;
}
