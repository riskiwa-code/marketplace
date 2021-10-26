final String produkTable = "produk";

class ProdukFields {
  static final List<String> values = [
    id,
    namaProduk,
    deskripsi,
    gambar,
    harga,
    rating,
    kategori,
    tokoId,
  ];

  static final String id = "_id";
  static final String namaProduk = "nama_produk";
  static final String deskripsi = "deskripsi_produk";
  static final String gambar = "gambar_produk";
  static final String harga = "harga_produk";
  static final String rating = "rating_produk";
  static final String stok = "stok_produk";
  static final String berat = "berat_produk";
  static final String kategori = "kategori_produk";
  static final String subKategori = "sub_kategori_produk";
  static final String diskon = "diskon_produk";
  static final String tokoId = "toko_id";
}

class ProdukModel {
  int? id;
  String gambar;
  int tokoId;
  String namaProduk;
  int rating;
  int harga;
  String kategori;
  String subKategori;
  String deskripsi;
  int diskon;
  int stok;
  int berat;

  ProdukModel({
    this.id,
    required this.gambar,
    required this.tokoId,
    required this.namaProduk,
    required this.rating,
    required this.harga,
    required this.deskripsi,
    required this.stok,
    required this.berat,
    required this.diskon,
    required this.kategori,
    required this.subKategori,
  });

  static ProdukModel fromJson(Map<String, Object?> json) => ProdukModel(
        id: json[ProdukFields.id] as int,
        gambar: json[ProdukFields.gambar] as String,
        tokoId: json[ProdukFields.tokoId] as int,
        namaProduk: json[ProdukFields.namaProduk] as String,
        rating: json[ProdukFields.rating] as int,
        harga: json[ProdukFields.harga] as int,
        stok: json[ProdukFields.stok] as int,
        diskon: json[ProdukFields.diskon] as int,
        berat: json[ProdukFields.berat] as int,
        deskripsi: json[ProdukFields.deskripsi] as String,
        kategori: json[ProdukFields.kategori] as String,
        subKategori: json[ProdukFields.subKategori] as String,
      );

  Map<String, Object?> toJson() => {
        ProdukFields.id: id,
        ProdukFields.namaProduk: namaProduk,
        ProdukFields.gambar: gambar,
        ProdukFields.deskripsi: deskripsi,
        ProdukFields.harga: harga,
        ProdukFields.rating: rating,
        ProdukFields.stok: stok,
        ProdukFields.diskon: diskon,
        ProdukFields.berat: berat,
        ProdukFields.kategori: kategori,
        ProdukFields.subKategori: subKategori,
        ProdukFields.tokoId: tokoId,
      };
}
