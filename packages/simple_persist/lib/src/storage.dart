abstract class Storage {
  String? key(int index);

  String? getItem(String key);

  void setItem(
    String key,
    String value,
  );

  void removeItem(String key);

  void clear();

  int get length;
}
