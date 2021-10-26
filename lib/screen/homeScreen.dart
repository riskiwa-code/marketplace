import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marketplace/db/database_helper.dart';
import 'package:marketplace/model/ProdukModel.dart';
import 'package:marketplace/provider/ProductProvider.dart';
import 'package:marketplace/screen/TestDB.dart';
import 'package:marketplace/screen/daftarScreen.dart';
import 'package:marketplace/screen/kategoriScreen.dart';
import 'package:marketplace/screen/keranjangScreen.dart';
import 'package:marketplace/screen/masukScreen.dart';
import 'package:marketplace/screen/tokoScreen.dart';
import 'package:marketplace/utils/user_preferences.dart';
import 'package:marketplace/widgets/product_card.dart';

import 'akunScreen.dart';

class HomeScreen extends StatefulWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool isLogin = false;
  String userRole = '';

  @override
  void initState() {
    super.initState();
    isLogin = UserPreferences.getIsLogin() ?? false;
    userRole = UserPreferences.getUserRole() ?? "";
    log(isLogin.toString());
  }

  PreferredSizeWidget TopBarHome() {
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
                MaterialPageRoute(builder: (context) {
                  if (isLogin) {
                    switch (userRole) {
                      case "pribadi":
                        return AkunScreen();
                      case "vendor":
                        return tokoScreen();
                    }
                  } else {
                    return masukScreen();
                  }
                  return masukScreen();
                }),
              ).then((value) {
                setState(() {
                  isLogin = UserPreferences.getIsLogin() ?? false;
                  userRole = UserPreferences.getUserRole() ?? "";
                });
              });
            })
      ],
    );
  }

  Widget ListProductMakanan(data) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          final product = data[index];

          return ProductCard(product);
        });
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
          TextButton(
              onPressed: () {
                log(isLogin.toString());
                log(userRole);
              },
              child: Text("Check Login")),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TestDB()),
                );
              },
              child: Text("Test DB")),
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
            child: FutureBuilder<List<ProdukModel>>(
              future: DatabaseHelper.instance.allProduk(),
              builder: (context, snapshot) {
                final products = snapshot.data;
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return Center(child: CircularProgressIndicator());
                  default:
                    if (snapshot.hasError) {
                      return Center(child: Text('Some error occurred!'));
                    } else {
                      return ListProductMakanan(products);
                    }
                }
              },
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
            // child: FutureBuilder<List<ProdukModel>>(
            //   future: ProductProvider.getUsersLocally(context),
            //   builder: (context, snapshot) {
            //     switch (snapshot.connectionState) {
            //       case ConnectionState.waiting:
            //         return Center(child: CircularProgressIndicator());
            //       default:
            //         if (snapshot.hasError) {
            //           return Center(child: Text('Some error occurred!'));
            //         } else {
            //           List<ProdukModel> filteredStrings = snapshot.data!
            //               .where((item) => item.kategori == "Minuman")
            //               .toList();
            //           return ListProductMakanan(filteredStrings);
            //         }
            //     }
            //   },
            // ),
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
            padding: EdgeInsets.all(24),
            child: Row(
              children: [
                Image.asset(
                  "assets/img/product-1.png",
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Toko Elektronik",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Harman Kardon Onyx 4",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rp. 1,300,000",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Keranjang"),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(24),
            child: Row(
              children: [
                Image.asset(
                  "assets/img/product-2.png",
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Toko Elektronik",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Harman Kardon Onyx 4",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rp. 1,300,000",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Keranjang"),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
