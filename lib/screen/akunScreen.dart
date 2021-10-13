import 'package:flutter/material.dart';

class AkunScreen extends StatefulWidget {
  // const AkunScreen({ Key? key }) : super(key: key);

  @override
  _AkunScreenState createState() => _AkunScreenState();
}

class _AkunScreenState extends State<AkunScreen> {
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
            onTap: () {},
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
