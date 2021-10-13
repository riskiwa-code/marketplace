import 'package:flutter/material.dart';
import 'package:marketplace/screen/daftarVendor2Screen.dart';

class DaftarVendor1Screen extends StatefulWidget {
  // const DaftarVendor1Screen({ Key? key }) : super(key: key);

  @override
  _DaftarVendor1ScreenState createState() => _DaftarVendor1ScreenState();
}

class _DaftarVendor1ScreenState extends State<DaftarVendor1Screen> {
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
              height: 20,
            ),
            Text("Nomor Ponsel"),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Text("Nama Lengkap"),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Text("NIK (Sesuai KTP)"),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Text("Alamat Email"),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Text("Alamat Rumah"),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Kota"), TextField()],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Kode Pos"), TextField()],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
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
                          builder: (context) => DaftarVendor2Screen()),
                    );
                  },
                  child: Text("Daftar"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
