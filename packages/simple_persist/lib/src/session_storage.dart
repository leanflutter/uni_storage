import 'package:simple_persist/src/storage.dart';
import 'package:web/web.dart' show window;

class SessionStorage extends Storage {
  @override
  String? key(int index) {
    return window.sessionStorage.key(index);
  }

  @override
  String? getItem(String key) {
    return window.sessionStorage.getItem(key);
  }

  @override
  void setItem(
    String key,
    String value,
  ) {
    window.sessionStorage.setItem(key, value);
  }

  @override
  void removeItem(String key) {
    window.sessionStorage.removeItem(key);
  }

  @override
  void clear() {
    window.sessionStorage.clear();
  }

  @override
  int get length {
    return window.sessionStorage.length;
  }
}
