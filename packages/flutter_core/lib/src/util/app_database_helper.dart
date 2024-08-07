import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../flutter_core.dart';

class AppDatabaseHelper {
  Database? _database;
  final String dbName;
  final int version;
  final OnDatabaseCreateFn? onCreate;
  final OnDatabaseVersionChangeFn? onUpgrade;
  final OnDatabaseVersionChangeFn? onDowngrade;
  final Function(Database db)? onOpen;

  final Map<dynamic, StreamController<List<Map<String, dynamic>>>>
      _controllers = {};

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

  Future<Database> getDatabase() async {
    _database ??= await initDatabase();
    var db = _database;
    return db!;
  }

  Future<List<T>> query<T>(QueryOptions<T> options) async {
    var db = await getDatabase();
    var list = options.rawQuery != null
        ? await db.rawQuery(options.rawQuery!)
        : await db.query(options.table,
            distinct: options.distinct,
            columns: options.columns,
            where: options.where,
            whereArgs: options.whereArgs,
            groupBy: options.groupBy,
            having: options.having,
            orderBy: options.orderBy,
            limit: options.limit,
            offset: options.offset);

    return list.map(options.mapper).toList();
  }

  Future<List<Map<String, dynamic>>> query2<T>(QueryOptions<T> options) async {
    var db = await getDatabase();
    var list = options.rawQuery != null
        ? await db.rawQuery(options.rawQuery!)
        : await db.query(options.table,
            distinct: options.distinct,
            columns: options.columns,
            where: options.where,
            whereArgs: options.whereArgs,
            groupBy: options.groupBy,
            having: options.having,
            orderBy: options.orderBy,
            limit: options.limit,
            offset: options.offset);

    return list;
  }

  Stream<List<T>> createStream<T>(QueryOptions<T> options) {
    if (!_controllers.containsKey(options)) {
      _controllers[options] =
          StreamController<List<Map<String, dynamic>>>.broadcast(
        onListen: () async {
          _controllers[options]?.add(await query2(options));
        },
      );
    }

    var stream =
        _controllers[options]?.stream as Stream<List<Map<String, dynamic>>>;
    return stream.map((list) => list.map(options.mapper).toList());
  }

  Future<int> update(String table, Map<String, dynamic> data, String where,
      List<dynamic> whereArgs) async {
    Database db = await getDatabase();
    var id = await db.update(table, data, where: where, whereArgs: whereArgs);
    _notifyControllers(table, "update");
    return id;
  }

  Future<int> delete(String table,
      {String? where, List<dynamic>? whereArgs}) async {
    Database db = await getDatabase();
    var id = await db.delete(table, where: where, whereArgs: whereArgs);
    _notifyControllers(table, "delete");
    return id;
  }

  Future<int> insert(String table, Map<String, dynamic> data,
      {String? nullColumnHack, ConflictAlgorithm? conflictAlgorithm}) async {
    Database db = await getDatabase();
    var id = await db.insert(table, data,
        nullColumnHack: nullColumnHack,
        conflictAlgorithm: conflictAlgorithm ?? ConflictAlgorithm.replace);
    _notifyControllers(table, "insert");
    return id;
  }

  Future<dynamic> batch(Function(Batch batch) action) async {
    var db = await getDatabase();
    var batch = db.batch();
    action(batch);
    _notifyAllControllers();
    return await batch.commit(noResult: true, continueOnError: true);
  }

  void _notifyControllers(String table, String action) async {
    _controllers.forEach((options, controller) async {
      if (options.table == table) {
        controller.add(await query2(options));
      }
    });
  }

  void _notifyAllControllers() async {
    _controllers.forEach((options, controller) async {
      controller.add(await query2(options));
    });
  }

  void dispose() {
    _controllers.forEach((key, a) {
      if (!a.isClosed) a.close();
    });

    _controllers.clear();
  }

  void close({String? table, QueryOptions<dynamic>? options}) {
    _controllers.forEach((key, a) {
      if ((table != null && key.table == table) ||
          key.table == options?.table) {
        if (!a.isClosed) {
          a.close();
        }
        _controllers.remove(key);
        return;
      }
    });
  }
}

class QueryOptions<T> {
  final String table;
  final T Function(Map<String, dynamic>) mapper;
  final bool? distinct;
  final List<String>? columns;
  final String? where;
  final List<Object?>? whereArgs;
  final String? groupBy;
  final String? having;
  final String? orderBy;
  final int? limit;
  final int? offset;
  final String? rawQuery;

  QueryOptions(
      {required this.table,
      required this.mapper,
      this.distinct,
      this.columns,
      this.where,
      this.whereArgs,
      this.groupBy,
      this.having,
      this.orderBy,
      this.limit,
      this.offset,
      this.rawQuery});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is QueryOptions<T> &&
        other.table == table &&
        other.mapper == mapper &&
        other.distinct == distinct &&
        listEquals(other.columns, columns) &&
        other.where == where &&
        listEquals(other.whereArgs, whereArgs) &&
        other.groupBy == groupBy &&
        other.having == having &&
        other.orderBy == orderBy &&
        other.limit == limit &&
        other.offset == offset &&
        other.rawQuery == rawQuery;
  }

  @override
  int get hashCode {
    return table.hashCode ^
        mapper.hashCode ^
        distinct.hashCode ^
        columns.hashCode ^
        where.hashCode ^
        whereArgs.hashCode ^
        groupBy.hashCode ^
        having.hashCode ^
        orderBy.hashCode ^
        limit.hashCode ^
        offset.hashCode ^
        rawQuery.hashCode;
  }
}
