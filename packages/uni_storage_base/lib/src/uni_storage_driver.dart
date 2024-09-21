import 'package:uni_storage_base/src/uni_storage_api_interface.dart';

class UniStorageDriver extends UniStorageApiInterface {
  @override
  Future<ListAllMyBucketsResult> listBuckets({
    String? continuationToken,
    String? maxBuckets,
  }) {
    throw UnimplementedError();
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
    throw UnimplementedError();
  }
}
