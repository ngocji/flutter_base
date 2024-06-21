import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart' as sp;

class AppSharedPreferences {
  final sp.SharedPreferences prefs;

  const AppSharedPreferences({
    required this.prefs,
  });

  T? get<T>(String key, [T? defaultValue]) {
    final value = prefs.get(key);
    if (value is T) {
      return value;
    }

    try {
      var decodedValue = jsonDecode(value.toString());
      if (decodedValue is T) {
        return decodedValue;
      }
    } on Exception catch (e) {
      if (kDebugMode) print(e);
    }

    return defaultValue;
  }

  bool containsKey(String key) => prefs.containsKey(key);

  Future<bool> set<T>(String key, T? value) {
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

  Future<bool> clear() => prefs.clear();
}
