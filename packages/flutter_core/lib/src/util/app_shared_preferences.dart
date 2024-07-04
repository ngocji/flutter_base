import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart' as sp;

class AppSharedPreferences {
  final sp.SharedPreferences prefs;
  final Map<String, StreamController<dynamic>> _controllers = {};

  AppSharedPreferences({
    required this.prefs,
  });

  T? get<T>(String key,
      {T? defaultValue, T Function(Map<String, dynamic>)? mapper}) {
    final value = prefs.get(key);
    if (value is T) {
      return value;
    }

    final jsonString = prefs.getString(key);

    if (jsonString != null) {
      try {
        final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
        if (mapper != null) {
          return mapper(jsonMap);
        } else {
          throw Exception("Can't convert object because null mapper transform");
        }
      } on Exception catch (e) {
        if (kDebugMode) print(e);
      }
    }

    return defaultValue;
  }

  Stream<T?> getStream<T>(String key,
      {T? defaultValue, T Function(Map<String, dynamic>)? mapper}) {
    if (!_controllers.containsKey(key)) {
      _controllers[key] = StreamController<T?>.broadcast(
        onListen: () {
          _controllers[key]
              ?.add(get(key, defaultValue: defaultValue, mapper: mapper));
        },
      );
    }

    return _controllers[key]?.stream as Stream<T?>;
  }

  void closeStream(String key) {
    if (_controllers.containsKey(key)) {
      _controllers[key]?.close();
    }
  }

  bool containsKey(String key) => prefs.containsKey(key);

  Future<bool> set<T, R>(String key,
      {required T? value, R Function(T?)? mapper}) {
    if (_controllers.containsKey(key)) {
      if (mapper != null) {
        _controllers[key]?.add(mapper(value));
      } else {
        _controllers[key]?.add(value);
      }
    }

    switch (T) {
      case String:
        return prefs.setString(key, value as String);
      case int:
        return prefs.setInt(key, value as int);
      case bool:
        return prefs.setBool(key, value as bool);
      case double:
        return prefs.setDouble(key, value as double);
      case const (List<String>):
        return prefs.setStringList(key, value as List<String>);
      default:
        return Future(() {
          return jsonEncode(value);
        }).then((value) => prefs.setString(key, value));
    }
  }

  Future<bool> remove(String key) => prefs.remove(key);

  Future<void> clear() {
    return prefs.clear().then((value) {
      for (var stream in _controllers.values) {
        if (!stream.isClosed) {
          stream.close();
        }
      }
      _controllers.clear();
    });
  }
}
