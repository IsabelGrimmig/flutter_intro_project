import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Database {
  Future<Database> openMyDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'my_database.db');
    final database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        db.execute('''
          CREATE TABLE favorites (
            id INTEGER PRIMARY KEY,
            title TEXT,
            posterPath TEXT
          )
          ''');
      },
    );
    return database;
  }
}
