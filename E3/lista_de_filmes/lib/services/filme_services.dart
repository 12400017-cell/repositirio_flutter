import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/filme.dart';

class FilmeService {
  static final FilmeService instance = FilmeService._init();
  static Database? _database;

  FilmeService._init();

  // Abrir/criar o banco
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('filmes.db');
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, fileName);

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE filmes (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            titulo TEXT NOT NULL,
            assistido INTEGER NOT NULL
          )
        ''');
      },
    );
  }

  // INSERT -> cadastrar filme
  Future<int> inserir(Filme filme) async {
    final db = await database;
    return await db.insert('filmes', filme.toMap());
  }

  // SELECT -> buscar filmes
  Future<List<Filme>> listar() async {
    final db = await database;
    final maps = await db.query('filmes', orderBy: 'id DESC');
    return maps.map((m) => Filme.fromMap(m)).toList();
  }

  // UPDATE -> marcar/desmarcar como assistido
  Future<int> atualizarStatus(int id, bool assistido) async {
    final db = await database;
    return await db.update(
      'filmes',
      {'assistido': assistido ? 1 : 0},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}