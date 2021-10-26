import 'package:flutter/material.dart';
import 'package:marketplace/model/ProdukModel.dart';
import 'package:marketplace/screen/detailProdukScreen.dart';
import 'package:marketplace/screen/keranjangScreen.dart';

class ProductCard extends StatelessWidget {
  final ProdukModel product;
  const ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: EdgeInsets.only(left: 24),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailProdukScreen(this.product)),
                  );
                },
                child: Center(
                  child: Image.asset(
                    "assets/img/produk/" + product.gambar,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Toko , " + product.kategori,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                product.namaProduk,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  for (var i = 0; i < product.rating; i++)
                    Icon(
                      Icons.star,
                      size: 20,
                    ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Rp. ${product.harga}",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KeranjangPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff0C3955)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: Text("Beli"),
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            child: Icon(Icons.star),
          ),
        ],
      ),
    );
  }
}
