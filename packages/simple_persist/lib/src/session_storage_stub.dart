import 'package:simple_persist/src/storage.dart';

class SessionStorage extends Storage {
  @override
  String? key(int index) {
    throw UnsupportedError('Only supported in web');
  }

  @override
  String? getItem(String key) {
    throw UnsupportedError('Only supported in web');
  }

  @override
  void setItem(
    String key,
    String value,
  ) {
    throw UnsupportedError('Only supported in web');
  }

  @override
  void removeItem(String key) {
    throw UnsupportedError('Only supported in web');
  }

  @override
  void clear() {
    throw UnsupportedError('Only supported in web');
  }

  @override
  int get length {
    throw UnsupportedError('Only supported in web');
  }
}
