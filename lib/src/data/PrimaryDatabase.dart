import 'package:flutter_core/flutter_core.dart';

class PrimaryDatabase {
  late AppDatabaseHelper _appDatabaseHelper;

  PrimaryDatabase() {
    _appDatabaseHelper = AppDatabaseHelper(
        dbName: "PrimaryDatabase.db",
        version: 1,
        onCreate: (db, version) {
          _createDb(db, version);
        },
        onUpgrade: (db, oldVersion, newVersion) {},
        onDowngrade: (db, oldVersion, newVersion) {},
        onOpen: (db) {});
  }

  void _createDb(Database db, int version) {
    // todo create tables...
  }

// todo more function query database
}
