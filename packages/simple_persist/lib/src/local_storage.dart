import 'package:simple_persist/src/storage.dart';
import 'package:web/web.dart' show window;

class LocalStorage extends Storage {
  @override
  String? key(int index) {
    return window.localStorage.key(index);
  }

  @override
  String? getItem(String key) {
    return window.localStorage.getItem(key);
  }

  @override
  void setItem(
    String key,
    String value,
  ) {
    window.localStorage.setItem(key, value);
  }

  @override
  void removeItem(String key) {
    window.localStorage.removeItem(key);
  }

  @override
  void clear() {
    window.localStorage.clear();
  }

  @override
  int get length {
    return window.localStorage.length;
  }
}
