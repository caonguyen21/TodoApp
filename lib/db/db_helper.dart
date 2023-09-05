import 'dart:async';

import 'package:sqflite/sqflite.dart';

import '../models/task.dart';

class DBHelper {
  static Database? _db;
  static final int _version = 1;
  static final String _tableName = "tasks";

  static Future<void> initDb() async {
    if (_db != null) {
      return;
    }
    try {
      // Get the path to the database file
      String _path = await getDatabasesPath() + 'tasks.db';
      // Open the database
      _db = await openDatabase(
        _path,
        version: _version,
        onCreate: (db, version) {
          // Create the tasks table
          return db.execute('''
            CREATE TABLE $_tableName (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              title STRING,
              note TEXT,
              isCompleted INTEGER,
              date STRING,
              startTime STRING,
              endTime STRING,
              color INTEGER,
              remind INTEGER,
              repeat STRING
            )
          ''');
        },
      );
    } catch (ex) {
      print("Error initializing database: $ex");
    }
  }

  static Future<int> insert(Task? task) async {
    return await _db?.insert(_tableName, task!.toJson()) ?? 1;
  }
}
