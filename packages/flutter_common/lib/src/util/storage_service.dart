class StorageService {
  final Map<String, dynamic> _storage = {};

  void setData<T>(String key, T value) {
    _storage[key] = value;
  }

  T? getData<T>(String key) {
    return _storage[key] as T?;
  }

  void removeData(String key) {
    _storage.remove(key);
  }

  bool containsKey(String key) {
    return _storage.containsKey(key);
  }

  void clear() {
    _storage.clear();
  }
}