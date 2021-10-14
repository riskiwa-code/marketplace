import 'package:meta/meta.dart';

class ProductModel {
  String id;
  String gambar;
  String namaToko;
  String namaProduk;
  String rating;
  String harga;
  String kategori;

  ProductModel(
      {this.id,
      this.gambar,
      this.namaToko,
      this.namaProduk,
      this.rating,
      this.harga,
      this.kategori});

  static ProductModel fromJson(json) => ProductModel(
        id: json["id"],
        gambar: json["gambar"],
        namaToko: json["namaToko"],
        namaProduk: json["namaProduk"],
        rating: json["rating"],
        harga: json["harga"],
        kategori: json["kategori"],
      );
}
