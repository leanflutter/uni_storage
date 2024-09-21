import 'dart:io';
import 'package:yaml/yaml.dart';

class StorageDriverConfig {
  StorageDriverConfig({
    required this.id,
    required this.type,
    required this.options,
  });

  factory StorageDriverConfig.fromJson(Map<dynamic, dynamic> json) {
    return StorageDriverConfig(
      id: json['id'],
      type: json['type'],
      options: Map<String, dynamic>.from(json['options'] ?? {}),
    );
  }

  final String id;
  final String type;
  final Map<String, dynamic> options;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'options': options,
    };
  }
}

Future<void> initConfig() async {
  final String jsonString = File('config.yaml').readAsStringSync();
  final YamlMap json = loadYaml(jsonString);
  Config.getInstance().parse(json);
}

class Config {
  Config._internal();
  static Config? _instance;

  static Config getInstance() {
    _instance ??= Config._internal();
    return _instance!;
  }

  void parse(YamlMap json) {
    env = json['env'] as String;
    authKey = json['authKey'] as String;
    authEnabled = json['authEnabled'] as bool;
    if (json['storageDrivers'] != null) {
      Iterable l = json['storageDrivers'] as List;
      storageDrivers = l.map((item) {
        Map<String, dynamic> j = Map<String, dynamic>.from(item);
        return StorageDriverConfig.fromJson(j);
      }).toList();
    }
  }

  late String env;
  late String authKey;
  late bool authEnabled;
  List<StorageDriverConfig> storageDrivers = [];
}
