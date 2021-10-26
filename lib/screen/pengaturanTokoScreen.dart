import 'package:flutter/material.dart';

class PengaturanTokoScreen extends StatefulWidget {
  // const PengaturanTokoScreen({ Key? key }) : super(key: key);

  @override
  _PengaturanTokoScreenState createState() => _PengaturanTokoScreenState();
}

class _PengaturanTokoScreenState extends State<PengaturanTokoScreen> {
  String? _statusValue;
  List<String> _statusList = ['Aktif', 'Tidak Akftif'];
  String? _kotaValue;
  List<String> _kotaList = ['Jakarta', 'Bandung'];
  String? _metodePembayaranValue;
  List<String> _metodePembayaranList = ['Debit', 'Kredit'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Pengaturan Toko"),
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
                        labelText: "Nama Toko",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Slogan",
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
          Text("Status"),
          DropdownButton(
            items: _statusList.map((status) {
              return DropdownMenuItem(
                child: new Text(status),
                value: status,
              );
            }).toList(),
            hint: Text("Pilih Status"),
            value: _statusValue,
            onChanged: (String? value) {
              setState(() {
                _statusValue = value;
              });
            },
            isExpanded: true,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Alamat"),
          TextFormField(),
          SizedBox(
            height: 20,
          ),
          Text("Status"),
          DropdownButton(
            items: _kotaList.map((kota) {
              return DropdownMenuItem(
                child: new Text(kota),
                value: kota,
              );
            }).toList(),
            hint: Text("Pilih Kota"),
            value: _kotaValue,
            onChanged: (String? value) {
              setState(() {
                _kotaValue = value;
              });
            },
            isExpanded: true,
          ),
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
          Text("Deskripsi Toko"),
          TextFormField(
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            maxLines: null,
          ),
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
            hint: Text("Pilih Status"),
            value: _metodePembayaranValue,
            onChanged: (String? value) {
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
