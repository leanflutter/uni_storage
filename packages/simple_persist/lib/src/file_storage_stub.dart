import 'package:simple_persist/src/storage.dart';

class FileStorage extends Storage {
  FileStorage(this.filePath);

  final String filePath;

  @override
  String? key(int index) {
    throw UnsupportedError('Not supported in web');
  }

  @override
  String? getItem(String key) {
    throw UnsupportedError('Not supported in web');
  }

  @override
  void setItem(
    String key,
    String value,
  ) {
    throw UnsupportedError('Not supported in web');
  }

  @override
  void removeItem(String key) {
    throw UnsupportedError('Not supported in web');
  }

  @override
  void clear() {
    throw UnsupportedError('Not supported in web');
  }

  @override
  int get length {
    throw UnsupportedError('Not supported in web');
  }
}
