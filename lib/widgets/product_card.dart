import 'package:flutter/material.dart';
import 'package:marketplace/screen/keranjangScreen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/img/product-1.png"),
              SizedBox(
                height: 15,
              ),
              Text(
                "Toko Mas Agus",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Nissin Cup Noodle Seafood"),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                  ),
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
                child: Text("Rp. 11,000",
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
