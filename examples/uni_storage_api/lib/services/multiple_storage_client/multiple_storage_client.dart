import 'dart:io';

import 'package:collection/collection.dart';
import 'package:uni_storage_client/uni_storage_client.dart';
import 'package:uni_storage_api/utils/utils.dart';
import 'package:uni_storage_driver_local/uni_storage_driver_local.dart';
import 'package:uni_storage_driver_minio/uni_storage_driver_minio.dart';

class MultipleStorageClient {
  MultipleStorageClient._();

  /// The shared instance of [MultipleStorageClient].
  static final MultipleStorageClient instance = MultipleStorageClient._();

  Map<String, UniStorageClient> _storageClients = {};

  UniStorageClient use(String id) {
    if (!_storageClients.containsKey(id)) {
      StorageDriverConfig? driverConfig =
          sharedConfig.storageDrivers.firstWhereOrNull(
        (element) => element.id == id,
      );
      if (driverConfig == null) {
        throw Exception('Cannot find storage driver with id: $id');
      }
      UniStorageDriver? driver;
      switch (driverConfig.type) {
        case 'local':
          driver = UniStorageDriverLocal(
            Directory(driverConfig.options['rootDir']),
          );
          break;
        case 's3':
          driver = UniStorageDriverMinio(
            endPoint: driverConfig.options['endPoint'],
            accessKey: driverConfig.options['accessKey'],
            secretKey: driverConfig.options['secretKey'],
            region: driverConfig.options['region'],
          );
          break;
        default:
          throw Exception(
            'Unsupported storage driver type: ${driverConfig.type}',
          );
      }
      _storageClients[id] = UniStorageClient(driver);
    }
    return _storageClients[id]!;
  }
}
