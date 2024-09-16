import 'package:s3_api_base/src/operations/abort_multipart_upload.dart';
import 'package:s3_api_base/src/operations/complete_multipart_upload.dart';
import 'package:s3_api_base/src/operations/copy_object.dart';
import 'package:s3_api_base/src/operations/create_bucket.dart';
import 'package:s3_api_base/src/operations/create_multipart_upload.dart';
import 'package:s3_api_base/src/operations/create_session.dart';
import 'package:s3_api_base/src/operations/delete_bucket.dart';
import 'package:s3_api_base/src/operations/delete_bucket_analytics_configuration.dart';
import 'package:s3_api_base/src/operations/delete_bucket_cors.dart';
import 'package:s3_api_base/src/operations/delete_bucket_encryption.dart';
import 'package:s3_api_base/src/operations/delete_bucket_intelligent_tiering_configuration.dart';
import 'package:s3_api_base/src/operations/delete_bucket_inventory_configuration.dart';
import 'package:s3_api_base/src/operations/delete_bucket_lifecycle.dart';
import 'package:s3_api_base/src/operations/delete_bucket_metrics_configuration.dart';
import 'package:s3_api_base/src/operations/delete_bucket_ownership_controls.dart';
import 'package:s3_api_base/src/operations/delete_bucket_policy.dart';
import 'package:s3_api_base/src/operations/delete_bucket_replication.dart';
import 'package:s3_api_base/src/operations/delete_bucket_tagging.dart';
import 'package:s3_api_base/src/operations/delete_bucket_website.dart';
import 'package:s3_api_base/src/operations/delete_object.dart';
import 'package:s3_api_base/src/operations/delete_object_tagging.dart';
import 'package:s3_api_base/src/operations/delete_objects.dart';
import 'package:s3_api_base/src/operations/delete_public_access_block.dart';
import 'package:s3_api_base/src/operations/get_bucket_accelerate_configuration.dart';
import 'package:s3_api_base/src/operations/get_bucket_acl.dart';
import 'package:s3_api_base/src/operations/get_bucket_analytics_configuration.dart';
import 'package:s3_api_base/src/operations/get_bucket_cors.dart';
import 'package:s3_api_base/src/operations/get_bucket_encryption.dart';
import 'package:s3_api_base/src/operations/get_bucket_intelligent_tiering_configuration.dart';
import 'package:s3_api_base/src/operations/get_bucket_inventory_configuration.dart';
import 'package:s3_api_base/src/operations/get_bucket_lifecycle.dart';
import 'package:s3_api_base/src/operations/get_bucket_lifecycle_configuration.dart';
import 'package:s3_api_base/src/operations/get_bucket_location.dart';
import 'package:s3_api_base/src/operations/get_bucket_logging.dart';
import 'package:s3_api_base/src/operations/get_bucket_metrics_configuration.dart';
import 'package:s3_api_base/src/operations/get_bucket_notification.dart';
import 'package:s3_api_base/src/operations/get_bucket_notification_configuration.dart';
import 'package:s3_api_base/src/operations/get_bucket_ownership_controls.dart';
import 'package:s3_api_base/src/operations/get_bucket_policy.dart';
import 'package:s3_api_base/src/operations/get_bucket_policy_status.dart';
import 'package:s3_api_base/src/operations/get_bucket_replication.dart';
import 'package:s3_api_base/src/operations/get_bucket_request_payment.dart';
import 'package:s3_api_base/src/operations/get_bucket_tagging.dart';
import 'package:s3_api_base/src/operations/get_bucket_versioning.dart';
import 'package:s3_api_base/src/operations/get_bucket_website.dart';
import 'package:s3_api_base/src/operations/get_object.dart';
import 'package:s3_api_base/src/operations/get_object_acl.dart';
import 'package:s3_api_base/src/operations/get_object_attributes.dart';
import 'package:s3_api_base/src/operations/get_object_legal_hold.dart';
import 'package:s3_api_base/src/operations/get_object_lock_configuration.dart';
import 'package:s3_api_base/src/operations/get_object_retention.dart';
import 'package:s3_api_base/src/operations/get_object_tagging.dart';
import 'package:s3_api_base/src/operations/get_object_torrent.dart';
import 'package:s3_api_base/src/operations/get_public_access_block.dart';
import 'package:s3_api_base/src/operations/head_bucket.dart';
import 'package:s3_api_base/src/operations/head_object.dart';
import 'package:s3_api_base/src/operations/list_bucket_analytics_configurations.dart';
import 'package:s3_api_base/src/operations/list_bucket_intelligent_tiering_configurations.dart';
import 'package:s3_api_base/src/operations/list_bucket_inventory_configurations.dart';
import 'package:s3_api_base/src/operations/list_bucket_metrics_configurations.dart';
import 'package:s3_api_base/src/operations/list_buckets.dart';
import 'package:s3_api_base/src/operations/list_directory_buckets.dart';
import 'package:s3_api_base/src/operations/list_multipart_uploads.dart';
import 'package:s3_api_base/src/operations/list_object_versions.dart';
import 'package:s3_api_base/src/operations/list_objects.dart';
import 'package:s3_api_base/src/operations/list_objects_v2.dart';
import 'package:s3_api_base/src/operations/list_parts.dart';
import 'package:s3_api_base/src/operations/put_bucket_accelerate_configuration.dart';
import 'package:s3_api_base/src/operations/put_bucket_acl.dart';
import 'package:s3_api_base/src/operations/put_bucket_analytics_configuration.dart';
import 'package:s3_api_base/src/operations/put_bucket_cors.dart';
import 'package:s3_api_base/src/operations/put_bucket_encryption.dart';
import 'package:s3_api_base/src/operations/put_bucket_intelligent_tiering_configuration.dart';
import 'package:s3_api_base/src/operations/put_bucket_inventory_configuration.dart';
import 'package:s3_api_base/src/operations/put_bucket_lifecycle.dart';
import 'package:s3_api_base/src/operations/put_bucket_lifecycle_configuration.dart';
import 'package:s3_api_base/src/operations/put_bucket_logging.dart';
import 'package:s3_api_base/src/operations/put_bucket_metrics_configuration.dart';
import 'package:s3_api_base/src/operations/put_bucket_notification.dart';
import 'package:s3_api_base/src/operations/put_bucket_notification_configuration.dart';
import 'package:s3_api_base/src/operations/put_bucket_ownership_controls.dart';
import 'package:s3_api_base/src/operations/put_bucket_policy.dart';
import 'package:s3_api_base/src/operations/put_bucket_replication.dart';
import 'package:s3_api_base/src/operations/put_bucket_request_payment.dart';
import 'package:s3_api_base/src/operations/put_bucket_tagging.dart';
import 'package:s3_api_base/src/operations/put_bucket_versioning.dart';
import 'package:s3_api_base/src/operations/put_bucket_website.dart';
import 'package:s3_api_base/src/operations/put_object.dart';
import 'package:s3_api_base/src/operations/put_object_acl.dart';
import 'package:s3_api_base/src/operations/put_object_legal_hold.dart';
import 'package:s3_api_base/src/operations/put_object_lock_configuration.dart';
import 'package:s3_api_base/src/operations/put_object_retention.dart';
import 'package:s3_api_base/src/operations/put_object_tagging.dart';
import 'package:s3_api_base/src/operations/put_public_access_block.dart';
import 'package:s3_api_base/src/operations/restore_object.dart';
import 'package:s3_api_base/src/operations/select_object_content.dart';
import 'package:s3_api_base/src/operations/upload_part.dart';
import 'package:s3_api_base/src/operations/upload_part_copy.dart';
import 'package:s3_api_base/src/operations/write_get_object_response.dart';

abstract class S3Client
    with
        AbortMultipartUploadOperation,
        CompleteMultipartUploadOperation,
        CopyObjectOperation,
        CreateBucketOperation,
        CreateMultipartUploadOperation,
        CreateSessionOperation,
        DeleteBucketAnalyticsConfigurationOperation,
        DeleteBucketCorsOperation,
        DeleteBucketEncryptionOperation,
        DeleteBucketIntelligentTieringConfigurationOperation,
        DeleteBucketInventoryConfigurationOperation,
        DeleteBucketLifecycleOperation,
        DeleteBucketMetricsConfigurationOperation,
        DeleteBucketOperation,
        DeleteBucketOwnershipControlsOperation,
        DeleteBucketPolicyOperation,
        DeleteBucketReplicationOperation,
        DeleteBucketTaggingOperation,
        DeleteBucketWebsiteOperation,
        DeleteObjectOperation,
        DeleteObjectTaggingOperation,
        DeleteObjectsOperation,
        DeletePublicAccessBlockOperation,
        GetBucketAccelerateConfigurationOperation,
        GetBucketAclOperation,
        GetBucketAnalyticsConfigurationOperation,
        GetBucketCorsOperation,
        GetBucketEncryptionOperation,
        GetBucketIntelligentTieringConfigurationOperation,
        GetBucketInventoryConfigurationOperation,
        GetBucketLifecycleConfigurationOperation,
        GetBucketLifecycleOperation,
        GetBucketLocationOperation,
        GetBucketLoggingOperation,
        GetBucketMetricsConfigurationOperation,
        GetBucketNotificationConfigurationOperation,
        GetBucketNotificationOperation,
        GetBucketOwnershipControlsOperation,
        GetBucketPolicyOperation,
        GetBucketPolicyStatusOperation,
        GetBucketReplicationOperation,
        GetBucketRequestPaymentOperation,
        GetBucketTaggingOperation,
        GetBucketVersioningOperation,
        GetBucketWebsiteOperation,
        GetObjectAclOperation,
        GetObjectAttributesOperation,
        GetObjectLegalHoldOperation,
        GetObjectLockConfigurationOperation,
        GetObjectOperation,
        GetObjectRetentionOperation,
        GetObjectTaggingOperation,
        GetObjectTorrentOperation,
        GetPublicAccessBlockOperation,
        HeadBucketOperation,
        HeadObjectOperation,
        ListBucketAnalyticsConfigurationsOperation,
        ListBucketIntelligentTieringConfigurationsOperation,
        ListBucketInventoryConfigurationsOperation,
        ListBucketMetricsConfigurationsOperation,
        ListBucketsOperation,
        ListDirectoryBucketsOperation,
        ListMultipartUploadsOperation,
        ListObjectVersionsOperation,
        ListObjectsOperation,
        ListObjectsV2Operation,
        ListPartsOperation,
        PutBucketAccelerateConfigurationOperation,
        PutBucketAclOperation,
        PutBucketAnalyticsConfigurationOperation,
        PutBucketCorsOperation,
        PutBucketEncryptionOperation,
        PutBucketIntelligentTieringConfigurationOperation,
        PutBucketInventoryConfigurationOperation,
        PutBucketLifecycleConfigurationOperation,
        PutBucketLifecycleOperation,
        PutBucketLoggingOperation,
        PutBucketMetricsConfigurationOperation,
        PutBucketNotificationConfigurationOperation,
        PutBucketNotificationOperation,
        PutBucketOwnershipControlsOperation,
        PutBucketPolicyOperation,
        PutBucketReplicationOperation,
        PutBucketRequestPaymentOperation,
        PutBucketTaggingOperation,
        PutBucketVersioningOperation,
        PutBucketWebsiteOperation,
        PutObjectAclOperation,
        PutObjectLegalHoldOperation,
        PutObjectLockConfigurationOperation,
        PutObjectOperation,
        PutObjectRetentionOperation,
        PutObjectTaggingOperation,
        PutPublicAccessBlockOperation,
        RestoreObjectOperation,
        SelectObjectContentOperation,
        UploadPartCopyOperation,
        UploadPartOperation,
        WriteGetObjectResponseOperation {}
