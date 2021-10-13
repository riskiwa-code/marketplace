import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import 'daftarPribadi3Screen.dart';

class daftarPribadi2Screen extends StatefulWidget {
  //const daftarPribadi2Screen({ Key? key }) : super(key: key);

  @override
  _daftarPribadi2ScreenState createState() => _daftarPribadi2ScreenState();
}

class _daftarPribadi2ScreenState extends State<daftarPribadi2Screen> {
  var _code;
  var _onEditing;

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
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Pastikan nomor Anda aktif, kode verifikasi telah dikirim melalui SMS ke Ponsel :",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "08788543584",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Masukkan 4 digit kode",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: VerificationCode(
                textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                underlineColor: Colors.amber,
                keyboardType: TextInputType.number,
                length: 4,
                onCompleted: (String value) {
                  setState(() {
                    _code = value;
                    print(value);
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    _onEditing = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
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
                          builder: (context) => daftarPribadi3Screen()),
                    );
                  },
                  child: Text("Verifikasi"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Kirim ulang kode OTP dalam 00:30",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
