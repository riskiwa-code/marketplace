import 'package:flutter/material.dart';

import 'daftarPribadi1Screen.dart';
import 'daftarVendor1Screen.dart';

class daftarScreen extends StatefulWidget {
  //const daftarScreen({ Key? key }) : super(key: key);

  @override
  _daftarScreenState createState() => _daftarScreenState();
}

class _daftarScreenState extends State<daftarScreen> {
  String? _sebagaiValue;
  List<String> _sebagaiList = ['Pribadi', 'Vendor'];
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
          children: [
            Text("Daftar sebagai"),
            DropdownButton(
              items: _sebagaiList.map((kota) {
                return DropdownMenuItem(
                  child: new Text(kota),
                  value: kota,
                );
              }).toList(),
              hint: Text("Pilih.."),
              value: _sebagaiValue,
              onChanged: (String? value) {
                setState(() {
                  _sebagaiValue = value;
                });
              },
              isExpanded: true,
            ),
            SizedBox(
              height: 400,
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
                    if (_sebagaiValue == "Pribadi") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => daftarPribadi1Screen()),
                      );
                    } else if (_sebagaiValue == "Vendor") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DaftarVendor1Screen()),
                      );
                    }
                  },
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
