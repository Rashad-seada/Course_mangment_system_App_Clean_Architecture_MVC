import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../../models/note_model.dart';

void main() async {}

class DatabaseProvider {
  DatabaseProvider._();
  static final DatabaseProvider db = DatabaseProvider._();
  static late Database _database;

  Future<Database> get database async {
    // if(_database != Null){
    //   return _database;
    // }
    _database = await initDB();
    return _database;
  }

  initDB() async {
    return await openDatabase(join(await getDatabasesPath(), "note_app.db"),
        onCreate: (db, version) async {
          await db
              .execute(
              'CREATE TABLE notes (id INTEGER PRIMARY KEY AUTOINCREMENT , title TEXT, body TEXT, creationTime DATE)')
              .then((value) => print('database created'));
        },
        version: 1,
        onOpen: (db) {
          print('database created');
        });
  }


  Future<dynamic> getNotes() async {
    final db = await database;
    final res = await db.query("notes").then((value) {
      print("got notes successfully");
      return value;
    });

    if (res.length == 0) {
      return [];
    } else
      return res.toList();

  }

  addNote(NoteModel note) async {
    final db = await database;
    db.insert(
      "notes",
      note.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    ).then((value) {
      print('note $value added successfully');
    });
  }

  deleteNote(int id) async{
    final db = await database;
    db.rawDelete('DELETE FROM notes WHERE id = ?', [id]).then((value) {
      print("item deleted successfuly");
    });
  }
}