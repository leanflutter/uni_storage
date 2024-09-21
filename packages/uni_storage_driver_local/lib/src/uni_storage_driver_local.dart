import 'dart:io';

import 'package:uni_storage_base/uni_storage_base.dart';

class UniStorageDriverLocal extends UniStorageDriver {
  UniStorageDriverLocal(
    this.rootDirectory,
  );

  final Directory rootDirectory;

  @override
  Future<ListAllMyBucketsResult> listBuckets({
    String? continuationToken,
    String? maxBuckets,
  }) {
    return Future.value(
      ListAllMyBucketsResult(
        buckets: rootDirectory
            .listSync()
            .whereType<Directory>()
            .map(
              (e) => Bucket(
                name: e.path.replaceFirst(rootDirectory.path, ''),
              ),
            )
            .toList(),
      ),
    );
  }

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
    final directory = Directory('${rootDirectory.path}/$bucket');
    if (!directory.existsSync()) {
      return ListBucketResult(
        contents: [],
        name: bucket,
        prefix: prefix,
      );
    }
    final directories = directory.listSync().whereType<Directory>().toList();
    final files = directory.listSync().whereType<File>().toList();
    return ListBucketResult(
      commonPrefixes: directories
          .map(
            (e) => CommonPrefix(
              prefix: e.path.replaceFirst(rootDirectory.path, ''),
            ),
          )
          .toList(),
      contents: files
          .map(
            (e) => Object(
              key: e.path.replaceFirst(rootDirectory.path, ''),
              lastModified: e.lastModifiedSync(),
              size: e.lengthSync(),
            ),
          )
          .toList(),
      name: bucket,
      prefix: prefix,
    );
  }
}
