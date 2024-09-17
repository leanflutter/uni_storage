import 'package:minio/minio.dart' as minio;
import 'package:minio/models.dart' as minio_models;
import 'package:uni_storage_base/uni_storage_base.dart';

class UniStorageDriverMinio extends UniStorageDriver {
  UniStorageDriverMinio({
    required this.endPoint,
    required this.accessKey,
    required this.secretKey,
    this.port,
    this.useSSL = true,
    this.sessionToken,
    this.region,
    this.enableTrace = false,
  }) : _minioClient = minio.Minio(
          endPoint: endPoint,
          accessKey: accessKey,
          secretKey: secretKey,
          port: port,
          useSSL: useSSL,
          sessionToken: sessionToken,
          region: region,
          enableTrace: enableTrace,
        );

  final String endPoint;
  final String accessKey;
  final String secretKey;
  final int? port;
  final bool useSSL;
  final String? sessionToken;
  final String? region;
  final bool enableTrace;

  /// Minio client
  final minio.Minio _minioClient;

  @override
  Future<ListBucketResult> listObjects({
    required String bucket,
    String? delimiter,
    String? encodingType,
    String? marker,
    String? maxKeys,
    String? prefix,
    String? expectedBucketOwner,
    String? optionalObjectAttributes,
    String? requestPayer,
  }) async {
    minio_models.ListObjectsResult listObjectsResult =
        await _minioClient.listAllObjects(bucket, prefix: prefix ?? '');
    return ListBucketResult(
      commonPrefixes: listObjectsResult.prefixes
          .map((e) => CommonPrefix(prefix: e))
          .toList(),
      contents: listObjectsResult.objects
          .map(
            (minio_models.Object object) => Object(
              eTag: object.eTag,
              key: object.key,
              lastModified: object.lastModified,
              owner: Owner(
                id: object.owner?.iD,
                displayName: object.owner?.displayName,
              ),
              size: object.size,
              storageClass: object.storageClass,
            ),
          )
          .toList(),
      delimiter: delimiter,
      name: bucket,
      prefix: prefix,
    );
  }
}
