import 'package:flutter/material.dart';
import 'package:marketplace/screen/kategoriScreen.dart';

class KategoriListScreen extends StatefulWidget {
  // const KategoriListScreen({ Key? key }) : super(key: key);

  @override
  _KategoriListScreenState createState() => _KategoriListScreenState();
}

Widget KategoriList(IconData icon, String label) {
  return ListTile(
    trailing: Icon(
      icon,
      color: Color(0xff0C3955),
      size: 32,
    ),
    title: Text(
      label,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    onTap: () {},
    minVerticalPadding: 30,
  );
}

class _KategoriListScreenState extends State<KategoriListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: SizedBox(
          width: 1,
        ),
        titleSpacing: 0,
        title: Text("Kategori"),
      ),
      body: ListView(
        children: [
          ListTile(
            trailing: Icon(
              Icons.restaurant_menu_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Makanan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KategoriScreen()),
              );
            },
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
          KategoriList(Icons.local_cafe_outlined, "Minuman"),
          Divider(
            height: 1,
          ),
          KategoriList(Icons.battery_charging_full_outlined,
              "Handphone, Tablet & Gadget"),
          Divider(
            height: 1,
          ),
          ListTile(
            trailing: Icon(
              Icons.computer_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Komputer, Alat Kantor & Periferal",
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
              Icons.house_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Elektronik Rumah Tangga",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KategoriScreen()),
              );
            },
            minVerticalPadding: 30,
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            trailing: Icon(
              Icons.confirmation_number_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Kamera & Audio",
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
              Icons.shopping_bag_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Fashion",
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
              Icons.local_florist_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Beauty",
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
              Icons.child_care_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Ibu, Bayi & Anak-Anak",
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
              Icons.sports_soccer_outlined,
              color: Color(0xff0C3955),
              size: 32,
            ),
            title: Text(
              "Sports & Lifestyle",
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
