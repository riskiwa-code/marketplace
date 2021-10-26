import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marketplace/db/database_helper.dart';
import 'package:marketplace/model/ProdukModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:convert';

class MasukanProdukScreen extends StatefulWidget {
  // const MasukanProdukScreen({ Key? key }) : super(key: key);

  @override
  _MasukanProdukScreenState createState() => _MasukanProdukScreenState();
}

class _MasukanProdukScreenState extends State<MasukanProdukScreen> {
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

  File? image;
  String? imageName;
  final _formKey = GlobalKey<FormState>();
  final _namaProdukController = TextEditingController();
  final _kategoriProdukController = TextEditingController();
  final _subKategoriProdukController = TextEditingController();
  final _produksiProdukController = TextEditingController();
  final _merkProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();
  final _kodeLisensiProdukController = TextEditingController();
  final _kodeUpcProdukController = TextEditingController();
  final _stokProdukController = TextEditingController();
  final _beratProdukController = TextEditingController();
  final _statusProdukController = TextEditingController();
  final _diskonProdukController = TextEditingController();
  final _deskripsiProdukController = TextEditingController();

  String? namaProduk, kategoriProduk, subKategoriProduk, deskripsiProduk;
  int? hargaProduk, stokProduk, beratProduk, diskonProduk;

  Future<File> saveImage(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Masukkan Produk"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama Produk"),
                  TextFormField(
                    controller: _namaProdukController,
                    validator: (value) {},
                  ),
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
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
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
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
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
                  Text("Produksi"),
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
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
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
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
                  Text("Harga"),
                  TextFormField(
                    controller: _hargaProdukController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),

                  /* -- */
                  Text("Berat Produk"),
                  TextFormField(
                    controller: _beratProdukController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
                  Text("Kode Lisensi Kunci"),
                  TextFormField(),
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
                  Text("Kode UPC (Optional)"),
                  TextFormField(),
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
                  Text("Jumlah Stok"),
                  TextFormField(
                    controller: _stokProdukController,
                  ),
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
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
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
                  Text("Potongan Harga"),
                  TextField(controller: _diskonProdukController),
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
                  Text("Deskripsi Produk"),
                  TextField(
                    controller: _deskripsiProdukController,
                  ),
                  /* -- */
                  SizedBox(
                    height: 20,
                  ),
                  /* -- */
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Text("Gambar"),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {
              try {
                final ImagePicker _picker = ImagePicker();
                final XFile? image =
                    await _picker.pickImage(source: ImageSource.gallery);
                if (image == null) return;
                final imageTemporary = File(image.path);
                final imageName = image.name;

                setState(() {
                  this.image = imageTemporary;
                  this.imageName = imageName;
                });
              } on PlatformException catch (e) {
                print('Failed to pick image: $e');
              }
            },
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: image != null
                        ? FileImage(image!) as ImageProvider
                        : AssetImage("assets/img/product-add.png"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.grey, width: 2)),
            ),
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
                onPressed: () async {
                  namaProduk = _namaProdukController.text;
                  deskripsiProduk = _deskripsiProdukController.text;
                  kategoriProduk = _kategoriValue;
                  subKategoriProduk = _subKategoriValue;
                  hargaProduk = int.parse(_hargaProdukController.text);
                  stokProduk = int.parse(_stokProdukController.text);
                  beratProduk = int.parse(_beratProdukController.text);
                  diskonProduk = int.parse(_diskonProdukController.text);
                  if (_formKey.currentState!.validate()) {
                    log(namaProduk.toString());
                    log(kategoriProduk.toString());
                    log(subKategoriProduk.toString());
                    log(hargaProduk.toString());
                    DatabaseHelper.instance.insertProduk(ProdukModel(
                        gambar: "kecap.jpg",
                        tokoId: 1,
                        namaProduk: namaProduk!,
                        rating: 4,
                        harga: hargaProduk!,
                        deskripsi: deskripsiProduk!,
                        stok: stokProduk!,
                        berat: beratProduk!,
                        diskon: diskonProduk!,
                        kategori: kategoriProduk!,
                        subKategori: subKategoriProduk!));
                  }
                },
                child: Text("Simpan"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
