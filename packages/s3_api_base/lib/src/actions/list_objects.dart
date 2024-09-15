class ListObjectsRequest {}

class ListObjectsResponse {}

abstract mixin class WithListObjects {
  Future<ListObjectsResponse> listObjects(ListObjectsRequest request);
}
