import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KelolaPromoScreen extends StatefulWidget {
  // const KelolaPromoScreen({ Key? key }) : super(key: key);

  @override
  _KelolaPromoScreenState createState() => _KelolaPromoScreenState();
}

class _KelolaPromoScreenState extends State<KelolaPromoScreen> {
  Widget ProductCard() {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 34,
      padding: EdgeInsets.all(10),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 5,
            spreadRadius: 2.0,
            offset: Offset(
              0,
              0,
            ),
          )
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Image.asset("assets/img/product-1.png",
                      fit: BoxFit.cover)),
              SizedBox(
                height: 15,
              ),
              Text(
                "Cheetos",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Makanan, Basah , Impor",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 5,
              ),
              Text("1 Kg"),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp. 5,000",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 2,000",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff0C3955)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: Text("Potongan Harga"),
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            child: Icon(Icons.close_outlined),
          ),
          Positioned(
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(99),
              ),
              width: 50,
              height: 50,
              child: Center(
                child: Text(
                  "20%",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Kelola Promo"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(99)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(99)),
                    hintText: "Search",
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.tune_outlined,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 20,
            children: [
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          )
        ],
      ),
    );
  }
}
