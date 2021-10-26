import 'package:flutter/material.dart';

import 'daftarVendor4Screen.dart';

class DaftarVendor3Screen extends StatefulWidget {
  // const DaftarVendor3Screen({ Key? key }) : super(key: key);

  @override
  _DaftarVendor3ScreenState createState() => _DaftarVendor3ScreenState();
}

class _DaftarVendor3ScreenState extends State<DaftarVendor3Screen> {
  String? _kategoriValue;
  List<String> _kategoriList = ['Makanan', 'Elektronik'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Daftar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.radio_button_unchecked_outlined,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.radio_button_unchecked_outlined,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.radio_button_unchecked_outlined,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.radio_button_unchecked_outlined,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("Nama Toko"),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Text("Kategori"),
            DropdownButton(
              items: _kategoriList.map((kategori) {
                return DropdownMenuItem(
                  child: new Text(kategori),
                  value: kategori,
                );
              }).toList(),
              hint: Text("Pilih Kategori"),
              value: _kategoriValue,
              onChanged: (String? value) {
                setState(() {
                  _kategoriValue = value;
                });
              },
              isExpanded: true,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Alamat Toko"),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Text("Nomor Telepon"),
            TextField(),
            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DaftarVendor4Screen()),
                    );
                  },
                  child: Text("Selanjutnya"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
