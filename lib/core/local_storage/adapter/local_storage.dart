abstract class LocalStorage {
  Future<void> set({
    required String key,
    required String value,
    bool sensitive,
  });

  Future<String?> get(String key);

  Future<void> delete(String key);
}
