import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> openMyDatabse() async {
  final dbPath = await getDatabasesPath();
  final path = join(dbPath, 'my_databse.db');
  final database = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) {},
  );
  return database;
}
