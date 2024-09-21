import 'dart:convert';
import 'dart:io';

import 'package:simple_persist/simple_persist.dart';
import 'package:simple_persist/src/storage.dart';

class FileStorage extends Storage {
  FileStorage(this.filePath);

  final String filePath;

  File? _file;

  File get file {
    _file ??= File(filePath);
    return _file!;
  }

  Map<String, dynamic> get _data {
    if (!file.existsSync()) {
      return <String, dynamic>{};
    }
    final content = file.readAsStringSync();
    return json.decode(content) as Map<String, dynamic>;
  }

  @override
  String? key(int index) {
    return _data.keys.elementAt(index);
  }

  @override
  String? getItem(String key) {
    return _data[key] as String?;
  }

  @override
  void setItem(
    String key,
    String value,
  ) {
    final data = _data;
    data[key] = value;
    file.writeAsStringSync(json.encode(data));
  }

  @override
  void removeItem(String key) {
    final data = _data;
    data.remove(key);
    file.writeAsStringSync(json.encode(data));
  }

  @override
  void clear() {
    file.writeAsStringSync('{}');
  }

  @override
  int get length {
    return _data.length;
  }
}
