import 'dart:collection';

class Properties with MapMixin<String, String> {
  final Map<String, String> _kv = {};

  Properties();

  static Properties loadString(String text) {
    final properties = Properties();
    final lines = text.split('\n');
    for (var i = 0; i < lines.length; i++) {
      var line = lines[i];
      line = line.trim();
      if (line.startsWith('#')) {
        // The '#' is properties file comment.
        continue;
      }
      if (line.isEmpty) {
        // empty line
        continue;
      }
      try {
        final kv = line.split('=');
        final k = kv[0];
        final v = kv[1];
        properties[k] = v;
      } catch (e) {
        throw LoadPropertiesError(
            'The $i line have not to convert. The text is : $line');
      }
    }

    return properties;
  }

  @override
  String operator [](Object key) {
    return _kv[key];
  }

  @override
  void operator []=(String key, String value) {
    _kv.putIfAbsent(key, () => value);
  }

  @override
  void clear() {
    _kv.clear();
  }

  @override
  Iterable<String> get keys => _kv.keys;

  @override
  String remove(Object key) {
    return _kv.remove(key);
  }
}

class LoadPropertiesError extends Error {
  final String msg;

  LoadPropertiesError(this.msg);
}
