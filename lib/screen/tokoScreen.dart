import 'package:flutter/material.dart';

class tokoScreen extends StatefulWidget {
  // const tokoScreen({ Key? key }) : super(key: key);

  @override
  _tokoScreenState createState() => _tokoScreenState();
}

class _tokoScreenState extends State<tokoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Toko"),
      ),
      body: ListView(
        children: [
          ListTile(
            trailing: Icon(
              Icons.build_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Pengaturan Toko",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            trailing: Icon(
              Icons.add_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Masukkan Produk",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            trailing: Icon(
              Icons.edit_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Kelola Produk",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            trailing: Icon(
              Icons.local_offer_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Kelola Promo",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            trailing: Icon(
              Icons.trending_up_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Penjualan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            trailing: Icon(
              Icons.description_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Pesanan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            trailing: Icon(
              Icons.star_outline,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Ulasan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
        ],
      ),
    );
  }
}
