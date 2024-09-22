import 'dart:convert';

import 'package:simple_persist/src/storage.dart';

abstract class Serializer<T> {
  T? decode(String? source);

  String? encode(T? value);
}

class JsonSerializer<T> implements Serializer<T> {
  const JsonSerializer(
    this.fromJson,
    this.toJson,
  );

  final T Function(Map<String, dynamic>) fromJson;
  final Map<String, dynamic> Function(T) toJson;

  @override
  T? decode(String? source) {
    if (source == null) {
      return null;
    }
    final Map<String, dynamic> map = Map<String, dynamic>.from(
      json.decode(source) as Map,
    );
    return fromJson(map);
  }

  @override
  String? encode(T? value) {
    if (value == null) {
      return null;
    }
    return json.encode(toJson(value));
  }
}

class Persistor<T> {
  Persistor({
    required this.key,
    required this.storage,
    required this.serializer,
  });

  final String key;
  final Storage storage;
  final Serializer<T> serializer;

  /// Persist the data to the storage.
  void persist(T? value) {
    final String? source = serializer.encode(value);
    if (source == null) {
      storage.removeItem(key);
    } else {
      storage.setItem(key, source);
    }
  }

  /// Restore the data from the storage.
  T? restore() {
    final String? source = storage.getItem(key);
    return serializer.decode(source);
  }
}
