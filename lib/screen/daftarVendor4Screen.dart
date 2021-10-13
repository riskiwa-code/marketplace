import 'package:flutter/material.dart';
import 'package:marketplace/screen/mainScreen.dart';

class DaftarVendor4Screen extends StatefulWidget {
  //const DaftarVendor4Screen({ Key? key }) : super(key: key);

  @override
  _DaftarVendor4ScreenState createState() => _DaftarVendor4ScreenState();
}

class _DaftarVendor4ScreenState extends State<DaftarVendor4Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Daftar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
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
              height: 50,
            ),
            Text("User ID"),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Text("Password"),
            TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Password (Ulangi Kembali)"),
            TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
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
                      MaterialPageRoute(builder: (context) => MainScreen()),
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
