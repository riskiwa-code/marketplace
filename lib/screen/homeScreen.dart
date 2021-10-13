import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marketplace/screen/daftarScreen.dart';
import 'package:marketplace/screen/kategoriScreen.dart';
import 'package:marketplace/screen/keranjangScreen.dart';
import 'package:marketplace/screen/masukScreen.dart';
import 'package:marketplace/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  Widget TopBarHome() {
    return AppBar(
      toolbarHeight: 75,
      leading: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Image.asset("assets/logo/logo-kemlu.png"),
      ),
      actions: [
        Container(
          width: 180,
          child: Align(
            alignment: Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(99)),
                hintText: 'Search',
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(99)),
                suffixIcon: Icon(Icons.search),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              ),
            ),
          ),
        ),
        IconButton(
            icon: Icon(
              Icons.notifications_rounded,
            ),
            onPressed: () {}),
        IconButton(
          icon: Icon(Icons.shopping_cart_rounded),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => KeranjangPage()),
            );
          },
        ),
        IconButton(
            icon: Icon(
              Icons.account_circle_rounded,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => masukScreen()),
              );
            })
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: TopBarHome(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Image.asset("assets/img/promo.png"),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  color: Color(0xffFBF5E4),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KategoriScreen()),
                      );
                    },
                    child: Container(
                      width: 60,
                      height: 50,
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.restaurant_outlined,
                              size: 32,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffFBF5E4),
                  child: Container(
                    width: 60,
                    height: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_cafe_outlined,
                            size: 32,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffFBF5E4),
                  child: Container(
                    width: 60,
                    height: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_outlined,
                            size: 32,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffFBF5E4),
                  child: Container(
                    width: 60,
                    height: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.battery_full_outlined,
                            size: 32,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "BEST SELLER MAKANAN",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Selengkapnya"),
                ],
              ),
            ),
          ),
          Container(
            height: 275,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 24,
                ),
                ProductCard(),
                SizedBox(
                  width: 20,
                ),
                ProductCard(),
                SizedBox(
                  width: 20,
                ),
                ProductCard(),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "BEST SELLER MINUMAN",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Selengkapnya"),
                ],
              ),
            ),
          ),
          Container(
            height: 275,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 24,
                ),
                ProductCard(),
                SizedBox(
                  width: 20,
                ),
                ProductCard(),
                SizedBox(
                  width: 20,
                ),
                ProductCard(),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Text(
                  "Daftar Keinginan",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.star),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.asset("assets/img/product-2.png"),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Toko Mas Agus",
                            style: TextStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Harman Kardon Onyx 4"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Rp. 1,306,000",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: Text("Keranjang"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/img/product-2.png",
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Toko Mas Agus",
                            style: TextStyle(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Harman Kardon Onyx 4"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Rp. 1,306,000",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: Text("Keranjang"),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
