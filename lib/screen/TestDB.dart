import 'package:flutter/material.dart';
import 'package:marketplace/db/database_helper.dart';
import 'package:marketplace/model/KeranjangModel.dart';
import 'package:marketplace/model/ProdukModel.dart';
import 'package:marketplace/model/TokoModel.dart';
import 'package:marketplace/model/TransaksiModel.dart';
import 'package:marketplace/screen/mainScreen.dart';

class TestDB extends StatefulWidget {
  // const TestDB({Key key}) : super(key: key);

  @override
  _TestDBState createState() => _TestDBState();
}

class _TestDBState extends State<TestDB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test DB"),
      ),
      body: ListView(
        children: [
          TextButton(
              onPressed: () async {
                var i = await DatabaseHelper.instance.insertToko(TokoModel(
                    id: null,
                    namaToko: "Toko Kiwa",
                    slogan: "Toko Terpercaya dan Termurah",
                    deskripsi: "Buka Senin Sampai Jumat",
                    alamat: "Jl. Kawi No.22",
                    kota: "DKI Jakarta",
                    nomorTelepon: "121223231"));
                print(i);
              },
              child: Text("Insert Toko")),
          TextButton(
              onPressed: () async {
                var result = await DatabaseHelper.instance.allToko();

                print(result);
              },
              child: Text("All Toko")),
          TextButton(
            onPressed: () async {
              await DatabaseHelper.instance.insertProduk(ProdukModel(
                id: 1,
                namaProduk: "Bakmi Ayam",
                gambar: "bakmi-ayam.png",
                harga: 10000,
                rating: 4,
                tokoId: 1,
                kategori: "Makanan",
                subKategori: "Basah",
                deskripsi: "Bakmi Ayam Spesial",
                diskon: 5,
                stok: 100,
                berat: 10,
              ));
            },
            child: Text("Insert Produk"),
          ),
          TextButton(
            onPressed: () async {
              var result = await DatabaseHelper.instance.allProduk();

              print(result);
            },
            child: Text("All Produk"),
          ),
          TextButton(
            onPressed: () async {
              var result = await DatabaseHelper.instance.insertKeranjang(
                  KeranjangModel(id: 1, produkId: 1, jumlah: 2));
              print(result);
            },
            child: Text("Insert Keranjang"),
          ),
          TextButton(
            onPressed: () async {
              var result = await DatabaseHelper.instance.allKeranjang();
              print(result);
            },
            child: Text("All Keranjang"),
          ),
          TextButton(
            onPressed: () async {
              var result =
                  await DatabaseHelper.instance.insertTransaksi(TransaksiModel(
                id: 1,
                produkId: 1,
                jumlah: 3,
                status: "Proses",
              ));
              print(result);
            },
            child: Text("Insert Transaksi"),
          ),
          TextButton(
            onPressed: () async {
              var result = await DatabaseHelper.instance.allTransaksi();
              print(result);
            },
            child: Text("All Transalsi"),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              },
              child: Text("Main Screen"))
        ],
      ),
    );
  }
}
