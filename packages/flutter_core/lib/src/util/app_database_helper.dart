import 'dart:async';

import '../../flutter_core.dart';

class AppDatabaseHelper {
  Database? _database;
  final String dbName;
  final int version;
  final OnDatabaseCreateFn? onCreate;
  final OnDatabaseVersionChangeFn? onUpgrade;
  final OnDatabaseVersionChangeFn? onDowngrade;
  final Function(Database db)? onOpen;

  final Map<String, StreamController<dynamic>> _controllers = {};

  AppDatabaseHelper(
      {required this.dbName,
      required this.version,
      required this.onCreate,
      this.onUpgrade,
      this.onDowngrade,
      this.onOpen});

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), dbName);
    return await openDatabase(path,
        version: version,
        onCreate: onCreate,
        onUpgrade: onUpgrade,
        onDowngrade: onDowngrade,
        onOpen: (db) => {onOpen?.call(db)});
  }

  void _runDatabase(Function(Database db) action) async {
    _database ??= await initDatabase();
    var db = _database;
    if (db != null) action(db);
  }
}
