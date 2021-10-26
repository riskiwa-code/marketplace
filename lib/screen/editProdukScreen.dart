import 'package:flutter/material.dart';

class EditProdukScreen extends StatefulWidget {
  // const EditProdukScreen({ Key? key }) : super(key: key);

  @override
  _EditProdukScreenState createState() => _EditProdukScreenState();
}

class _EditProdukScreenState extends State<EditProdukScreen> {
  String? _kategoriValue;
  List<String> _kategoriList = ['Makanan', 'Minuman'];
  String? _subKategoriValue;
  List<String> _subKategoriList = ['Basah', 'Kering'];
  String? _produksiValue;
  List<String> _produksiList = ['Lokal', 'Luar Negeri'];
  String? _merkValue;
  List<String> _merkList = ['Fiesta', 'So Good'];
  String? _statusValue;
  List<String> _statusList = ['Aktif', 'Tidak Aktif'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Edit Produk"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Text("Nama Produk"),
          TextFormField(),
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
          Text("Sub Kategori"),
          DropdownButton(
            items: _subKategoriList.map((subKategori) {
              return DropdownMenuItem(
                child: new Text(subKategori),
                value: subKategori,
              );
            }).toList(),
            hint: Text("Pilih Sub Kategori"),
            value: _subKategoriValue,
            onChanged: (String? value) {
              setState(() {
                _subKategoriValue = value;
              });
            },
            isExpanded: true,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Sub Kategori"),
          DropdownButton(
            items: _produksiList.map((produksi) {
              return DropdownMenuItem(
                child: new Text(produksi),
                value: produksi,
              );
            }).toList(),
            hint: Text("Pilih Produksi"),
            value: _produksiValue,
            onChanged: (String? value) {
              setState(() {
                _produksiValue = value;
              });
            },
            isExpanded: true,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Merk"),
          DropdownButton(
            items: _merkList.map((merk) {
              return DropdownMenuItem(
                child: new Text(merk),
                value: merk,
              );
            }).toList(),
            hint: Text("Pilih Merk"),
            value: _merkValue,
            onChanged: (String? value) {
              setState(() {
                _merkValue = value;
              });
            },
            isExpanded: true,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Harga"),
          TextFormField(),
          SizedBox(
            height: 20,
          ),
          Text("Kode Lisensi Kunci"),
          TextFormField(),
          SizedBox(
            height: 20,
          ),
          Text("Kode UPC (Optional)"),
          TextFormField(),
          SizedBox(
            height: 20,
          ),
          Text("Jumlah Stok"),
          TextFormField(),
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
          Text("Potongan Harga"),
          TextField(),
          SizedBox(
            height: 20,
          ),
          Text("Deskripsi Produk"),
          TextField(),
          SizedBox(
            height: 20,
          ),
          Text("Gambar"),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/promo.png"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.grey, width: 2)),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/product-add.png"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.grey, width: 2)),
                ),
              ),
            ],
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
