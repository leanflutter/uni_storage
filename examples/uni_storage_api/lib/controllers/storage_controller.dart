import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:uni_storage_api/utils/utils.dart';
import 'package:uni_storage_client/uni_storage_client.dart';
import 'package:uni_storage_api/services/multiple_storage_client/multiple_storage_client.dart';

class StorageController {
  UniStorageClient _getStorageClient(id) {
    return MultipleStorageClient.instance.use(id);
  }

  Future<Response> getDrivers(
    Request request,
  ) async {
    final data = (sharedConfig.storageDrivers).map((e) => e.toJson()).toList();
    return JsonResponse.ok(data);
  }

  Future<Response> getDriver(
    Request request,
    String id,
  ) async {
    final data = {
      'id': id,
      'type': _getStorageClient(id).driver.runtimeType.toString(),
    };
    return JsonResponse.ok(data);
  }

  Future<Response> listBuckets(
    Request request,
    String id,
  ) async {
    final result = await _getStorageClient(id).listBuckets();
    return JsonResponse.ok({
      'buckets': result.buckets
          ?.map((e) => {
                'name': e.name,
                'creationDate': e.creationDate,
              })
          .toList(),
      'continuationToken': result.continuationToken,
      'owner': result.owner == null
          ? null
          : {
              'displayName': result.owner?.displayName,
              'id': result.owner?.id,
            },
    });
  }

  Future<Response> listObjects(
    Request request,
    String id,
  ) async {
    final result = await _getStorageClient(id).listObjects(
      bucket: request.url.queryParameters['bucket']!,
      prefix: request.url.queryParameters['prefix'],
    );
    return JsonResponse.ok({
      'commonPrefixes': result.commonPrefixes
          ?.map((e) => {
                'prefix': e.prefix,
              })
          .toList(),
      'contents': result.contents
          ?.map((e) => {
                'key': e.key,
                'lastModified': e.lastModified?.toIso8601String(),
                'eTag': e.eTag,
                'size': e.size,
                'storageClass': e.storageClass,
                'owner': e.owner == null
                    ? null
                    : {
                        'displayName': e.owner?.displayName,
                        'id': e.owner?.id,
                      },
              })
          .toList(),
    });
  }

  Router get router {
    final router = Router();
    router.get('/', getDrivers);
    router.get('/<id>', getDriver);
    router.get('/<id>/listBuckets', listBuckets);
    router.get('/<id>/listObjects', listObjects);
    return router;
  }
}
