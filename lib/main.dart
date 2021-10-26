import 'package:flutter/material.dart';
import 'package:marketplace/screen/TestDB.dart';
import 'package:marketplace/screen/akunScreen.dart';
import 'package:marketplace/screen/editProdukScreen.dart';
import 'package:marketplace/screen/homeScreen.dart';
import 'package:marketplace/screen/kekolaProdukScreen.dart';
import 'package:marketplace/screen/kelolaPromoScreen.dart';
import 'package:marketplace/screen/keranjangScreen.dart';
import 'package:marketplace/screen/mainScreen.dart';
import 'package:marketplace/screen/masukanProdukScreen.dart';
import 'package:marketplace/screen/pengaturanAkunScreen.dart';
import 'package:marketplace/screen/pengaturanTokoScreen.dart';
import 'package:marketplace/screen/pengirimanScreen.dart';
import 'package:marketplace/screen/penjualanScreen.dart';
import 'package:marketplace/screen/pesananDetailScreen.dart';
import 'package:marketplace/screen/pesananScreen.dart';
import 'package:marketplace/screen/pesananVendorDetailScreen.dart';
import 'package:marketplace/screen/pesananVendorScreen.dart';
import 'package:marketplace/screen/testScreen.dart';
import 'package:marketplace/screen/tokoScreen.dart';
import 'package:marketplace/utils/user_preferences.dart';
import 'screen/masukScreen.dart';
import 'screen/daftarScreen.dart';
import 'screen/daftarPribadi1Screen.dart';
import 'screen/daftarPribadi2Screen.dart';
import 'screen/daftarPribadi3Screen.dart';
import 'screen/daftarVendor1Screen.dart';
import 'screen/daftarVendor2Screen.dart';
import 'screen/daftarVendor3Screen.dart';
import 'screen/kategoriListScreen.dart';
import 'screen/kategoriScreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await UserPreferences.init();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(color: Colors.black),
          centerTitle: true,
        ),
      ),
      home: MainScreen(),
    );
  }
}
