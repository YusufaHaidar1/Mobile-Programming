import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../models/item.dart';

class DbHelper {
  static DbHelper? _dbHelper;
  static Database? _database;
  DbHelper._createObject();

Future<Database> initDb() async {

//untuk menentukan nama database dan lokasi yg dibuat
  Directory directory = await getApplicationDocumentsDirectory();
  String path = directory.path + 'item.db';

//Hapus Database terlebih dahulu (Cukup dilakukan sekali apabila ada perlu update table)
//databaseFactory.deleteDatabase(path);


//create, read databases
  var itemDatabase = openDatabase(path, version: 4, onCreate: _createDb);

//mengembalikan nilai object sebagai hasil dari fungsinya
  return itemDatabase;
}

//buat tabel baru dengan nama item (dengan kondisi apabila tabel item sudah ada maka akan dihapus terlebih dahulu)
void _createDb(Database db, int version) async {
  await db.execute('''
  CREATE TABLE item (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kodebarang TEXT, 
  name TEXT,
  price INTEGER,
  stok INTEGER
  )
  ''');
}

//Select databases
Future<List<Map<String, dynamic>>> select() async {
  Database db = await this.initDb();
  var mapList = await db.query('item', orderBy: 'name');
  return mapList;
}

//Create databases
Future<int> insert(Item object) async {
  Database db = await this.initDb();
  int count = await db.insert('item', object.toMap());
  return count;
}

//Update databases
 Future<int> update(Item object) async {
 Database db = await this.initDb();
 int count = await db.update('item', object.toMap(),
 where: 'id=?',
 whereArgs: [object.id]);
 return count;
}

//Delete databases
Future<int> delete(int id) async {
  Database db = await this.initDb();
  int count = await db.delete('item',
  where: 'id=?',
  whereArgs: [id]);
  return count;
}

Future<List<Item>> getItemList() async {
  var itemMapList = await select();
  int count = itemMapList.length;
  List<Item> itemList = <Item>[];
    for (int i=0; i<count; i++) {
    itemList.add(Item.fromMap(itemMapList[i]));
  }
  return itemList;
}

factory DbHelper() {
  _dbHelper ??= DbHelper._createObject();
  return _dbHelper!;
}

Future<Database> get database async {
  _database ??= await initDb();
  return _database!;
}
}