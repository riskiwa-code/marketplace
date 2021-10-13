import 'package:flutter/material.dart';

import 'daftarPribadi2Screen.dart';

class daftarPribadi1Screen extends StatefulWidget {
  // const DaftarPribadi({ Key? key }) : super(key: key);

  @override
  _daftarPribadi1ScreenState createState() => _daftarPribadi1ScreenState();
}

class _daftarPribadi1ScreenState extends State<daftarPribadi1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Daftar"),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          builder: (context) => daftarPribadi2Screen()),
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
