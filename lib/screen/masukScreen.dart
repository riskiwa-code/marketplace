import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/screen/daftarScreen.dart';

class masukScreen extends StatefulWidget {
  //const masukScreen({ Key? key }) : super(key: key);

  @override
  _masukScreenState createState() => _masukScreenState();
}

class _masukScreenState extends State<masukScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Masuk",
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          children: [
            Text("User ID"),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Text("Password"),
            TextField(),
            SizedBox(
              height: 50,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Belum memiliki akun? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Daftar Disini",
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => daftarScreen()),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
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
                  onPressed: () {},
                  child: Text("Masuk"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
