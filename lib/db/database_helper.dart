import 'package:marketplace/model/KeranjangModel.dart';
import 'package:marketplace/model/ProdukModel.dart';
import 'package:marketplace/model/TokoModel.dart';
import 'package:marketplace/model/TransaksiModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await _initDB('marketplace.db');
    return _database;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path,
        version: 2, onCreate: _onCreate, onUpgrade: _onUpgrade);
  }

  Future _onCreate(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';
    final integerType = 'INTEGER NOT NULL';

    await db.execute('''
         CREATE TABLE $produkTable (
        ${ProdukFields.id} $idType,
        ${ProdukFields.namaProduk} $textType,
        ${ProdukFields.deskripsi} $textType,
        ${ProdukFields.gambar} $textType,
        ${ProdukFields.harga} $integerType,
        ${ProdukFields.rating} $integerType,
        ${ProdukFields.stok} $integerType,
        ${ProdukFields.berat} $integerType,
        ${ProdukFields.diskon} $integerType,
        ${ProdukFields.kategori} $textType,
        ${ProdukFields.subKategori} $textType,
        ${ProdukFields.tokoId} $integerType
        )
      ''');

    await db.execute('''
      CREATE TABLE $tokoTable (
        ${TokoFields.id} $idType,
        ${TokoFields.namaToko} $textType,
        ${TokoFields.slogan} $textType,
        ${TokoFields.deskripsi} $textType,
        ${TokoFields.alamat} $textType,
        ${TokoFields.kota} $textType,
        ${TokoFields.nomorTelepon} $textType
      )
      ''');

    await db.execute('''
      CREATE TABLE $keranjangTable(
        ${KeranjangFields.id} $idType,
        ${KeranjangFields.produkId} $integerType,
        ${KeranjangFields.jumlah} $integerType
      )
      ''');

    await db.execute('''
      CREATE TABLE $transaksiTable(
        ${TransaksiFields.id} $idType,
        ${TransaksiFields.produkId} $integerType,
        ${TransaksiFields.jumlah} $integerType,
        ${TransaksiFields.status} $textType
      )
      ''');
  }

  void _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1) {
      await db.execute(
          "ALTER TABLE $produkTable ADD COLUMN ${ProdukFields.berat} INTEGER NOT NULL;");
    }
  }

  Future<int> insertProduk(ProdukModel produk) async {
    final db = await instance.database;

    final result = await db!.insert(produkTable, produk.toJson());
    return result;
  }

  Future<List<ProdukModel>> allProduk() async {
    final db = await instance.database;
    final result = await db!.query(produkTable);
    return result.map((json) => ProdukModel.fromJson(json)).toList();
    //return result;
  }

  Future<int> insertToko(TokoModel toko) async {
    final db = await instance.database;

    final result = await db!.insert(tokoTable, toko.toJson());
    return result;
  }

  Future allToko() async {
    final db = await instance.database;
    final result = await db!.query(tokoTable);
    //return result;

    return result.map((e) => TokoModel.fromJson(e)).toList();
  }

  Future<int> insertKeranjang(KeranjangModel keranjang) async {
    final db = await instance.database;

    final result = await db!.insert(keranjangTable, keranjang.toJson());
    return result;
  }

  Future allKeranjang() async {
    final db = await instance.database;
    final result = await db!.query(keranjangTable);
    return result.map((e) => KeranjangModel.fromJson(e)).toList();
  }

  Future<int> insertTransaksi(TransaksiModel transaksi) async {
    final db = await instance.database;

    final result = await db!.insert(transaksiTable, transaksi.toJson());
    return result;
  }

  Future allTransaksi() async {
    final db = await instance.database;
    final result = await db!.query(transaksiTable);
    return result.map((e) => TransaksiModel.fromJson(e));
  }

  Future close() async {
    final db = await instance.database;
    db!.close();
  }
}
