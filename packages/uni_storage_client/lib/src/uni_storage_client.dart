import 'package:uni_storage_base/uni_storage_base.dart';

class UniStorageClient extends UniStorageApiInterface {
  UniStorageClient(this.driver);

  final UniStorageDriver driver;

  @override
  Future<ListAllMyBucketsResult> listBuckets({
    String? continuationToken,
    String? maxBuckets,
  }) {
    return driver.listBuckets(
      continuationToken: continuationToken,
      maxBuckets: maxBuckets,
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
  }) {
    return driver.listObjects(
      bucket: bucket,
      delimiter: delimiter,
      encodingType: encodingType,
      marker: marker,
      maxKeys: maxKeys,
      prefix: prefix,
      expectedBucketOwner: expectedBucketOwner,
      optionalObjectAttributes: optionalObjectAttributes,
      requestPayer: requestPayer,
    );
  }
}
