// TODO: Implement KV Store clients when the v1 contracts are upgraded https://github.com/nitrictech/nitric/pull/549

/// Thrown when a key can not be found in the KV store.
class KeyNotFoundException extends Error {
  String key;

  KeyNotFoundException(this.key);

  @override
  String toString() {
    return "Key '$key' could not be found in store.";
  }
}

/// A Key Value Store.
class Store<T> {
  final String name;
  final Map<String, T> _contents = {};

  Store(this.name);

  /// Get a reference to a key in the store.
  Key<T> key(String key) {
    return Key<T>(this, key);
  }

  /// List all the keys in the store.
  Future<List<String>> list() async {
    return _contents.keys.toList();
  }
}

/// A reference to a key in the key value store.
class Key<T> {
  final String key;
  final Store _store;

  Key(this._store, this.key);

  /// Bind a new [value] to the key.
  Future<void> put(T value) async {
    _store._contents[key] = value;
  }

  /// Get the value stored at the key.
  Future<T> access() async {
    if (!_store._contents.containsKey(key)) {
      throw KeyNotFoundException(key);
    }
    return _store._contents[key];
  }

  /// Unset the value at the key.
  Future<void> unset() async {
    if (!_store._contents.containsKey(key)) {
      throw KeyNotFoundException(key);
    }
    _store._contents.remove(key);
  }
}
