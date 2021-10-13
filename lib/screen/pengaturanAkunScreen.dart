import 'package:flutter/material.dart';

class PengaturanAkunScreen extends StatefulWidget {
  // const PengaturanAkunScreen({ Key? key }) : super(key: key);

  @override
  _PengaturanAkunScreenState createState() => _PengaturanAkunScreenState();
}

class _PengaturanAkunScreenState extends State<PengaturanAkunScreen> {
  String _kotaValue;
  List<String> _kotaList = ['Jakarta', 'Bandung'];
  String _metodePembayaranValue;
  List<String> _metodePembayaranList = ['Debit', 'Kredit'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Pengaturan Akun"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Row(
            children: [
              Flexible(
                  child: Image.asset(
                "assets/img/profile-add.png",
                height: 100,
              )),
              SizedBox(
                width: 30,
              ),
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "User ID",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Kata Sandi",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("Nama"),
          TextFormField(),
          SizedBox(
            height: 20,
          ),
          Text("Alamat"),
          TextFormField(),
          SizedBox(
            height: 20,
          ),
          Text("Kota"),
          DropdownButton(
            items: _kotaList.map((kota) {
              return DropdownMenuItem(
                child: new Text(kota),
                value: kota,
              );
            }).toList(),
            hint: Text("Pilih Kota"),
            value: _kotaValue,
            onChanged: (String value) {
              setState(() {
                _kotaValue = value;
              });
            },
            isExpanded: true,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Kode Pos"),
          TextFormField(),
          SizedBox(
            height: 20,
          ),
          Text("Nomor Telepon"),
          TextFormField(),
          SizedBox(
            height: 20,
          ),
          Text("Nomor Telepon (Alternatif)"),
          TextFormField(),
          SizedBox(
            height: 20,
          ),
          Text("Atur Metode Pembayaran"),
          DropdownButton(
            items: _metodePembayaranList.map((metodePembayaran) {
              return DropdownMenuItem(
                child: new Text(metodePembayaran),
                value: metodePembayaran,
              );
            }).toList(),
            hint: Text("Pilih Metode Pembayaran"),
            value: _metodePembayaranValue,
            onChanged: (String value) {
              setState(() {
                _metodePembayaranValue = value;
              });
            },
            isExpanded: true,
          ),
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
                onPressed: () {},
                child: Text("Simpan"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
