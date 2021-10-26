import 'package:flutter/material.dart';
import 'package:marketplace/screen/pengaturanAkunScreen.dart';
import 'package:marketplace/screen/pesananScreen.dart';
import 'package:marketplace/utils/user_preferences.dart';

class AkunScreen extends StatefulWidget {
  // const AkunScreen({ Key? key }) : super(key: key);

  @override
  _AkunScreenState createState() => _AkunScreenState();
}

class _AkunScreenState extends State<AkunScreen> {
  @override
  void initState() {
    super.initState();

    UserPreferences.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Akun"),
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
              "Pengaturan Akun",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PengaturanAkunScreen()),
              );
            },
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            trailing: Icon(
              Icons.sticky_note_2_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Pesanan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PesananScreen()),
              );
            },
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              UserPreferences.setIsLogin(false);
              UserPreferences.setUserRole("");
              Navigator.pop(context);
            },
            child: Text("Log Out"),
          ),
        ],
      ),
    );
  }
}
