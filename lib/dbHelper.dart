import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:tes_flutter/models/team_model.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  factory DBHelper() => _instance;
  DBHelper._internal();

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _initDb();
    return _db!;
  }

  // ========================
  // INIT DATABASE (FINAL)
  // ========================
  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'contacts.db');

    return await openDatabase(
      path,
      version: 2,
      onCreate: (db, version) async {
        // TABLE LAMA
        await db.execute(
          'CREATE TABLE contacts(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)',
        );

        // TABLE BARU: BOOKMARKS
        await db.execute(
          'CREATE TABLE bookmarks(id INTEGER PRIMARY KEY AUTOINCREMENT, teamName TEXT, badge TEXT, stadium TEXT)'
        );
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          await db.execute(
            'CREATE TABLE bookmarks(id INTEGER PRIMARY KEY AUTOINCREMENT, teamName TEXT, badge TEXT, stadium TEXT)'
          );
        }
      },
    );
  }

  // ========================
  // CRUD untuk CONTACTS
  // ========================

  Future<int> insertName(String name) async {
    final client = await db;
    return client.insert('contacts', {'name': name});
  }

  Future<List<Map<String, dynamic>>> getNames() async {
    final client = await db;
    return client.query('contacts', orderBy: 'id DESC');
  }

  Future<int> deleteName(int id) async {
    final client = await db;
    return client.delete('contacts', where: 'id = ?', whereArgs: [id]);
  }

  // ========================
  // CRUD untuk BOOKMARKS
  // ========================

  Future<int> addBookmark(TeamModel team) async {
    final client = await db;
    return client.insert('bookmarks', {
      'teamName': team.strTeam,
      'badge': team.strBadge,
      'stadium': team.strStadium ?? "-",
    });
  }

  Future<List<Map<String, dynamic>>> getBookmarks() async {
    final client = await db;
    return client.query('bookmarks', orderBy: 'id DESC');
  }

  Future<int> deleteBookmark(int id) async {
    final client = await db;
    return client.delete(
      'bookmarks',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
