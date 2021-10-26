import 'package:flutter/material.dart';

class PesananVendorDetailScreen extends StatefulWidget {
  // const PesananVendorDetailScreen({ Key? key }) : super(key: key);

  @override
  _PesananVendorDetailScreenState createState() =>
      _PesananVendorDetailScreenState();
}

class _PesananVendorDetailScreenState extends State<PesananVendorDetailScreen> {
  String? _statusValue;
  List<String> _statusList = ['Dikirim', 'Diproses'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Pesanan"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(99)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(99)),
                    hintText: "Search",
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.tune_outlined,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("13 Juli 2021"),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Image.asset('assets/img/product-1.png'),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nissin Cup Noodle",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text("5 barang"),
                  Text("2 kg"),
                  Text(
                    "Pembeli: JohnAndrea114",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Total"),
                  Text(
                    "Rp. 200.000,00",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("Nama"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Kareem Rhadewa Hasan",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Nomor Telepon"),
          SizedBox(
            height: 10,
          ),
          Text(
            "087885500857",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Alamat"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Jl. Compang Raya no 27",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Kota"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Jakarta",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Kode Pos"),
          SizedBox(
            height: 10,
          ),
          Text(
            "12440",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Metode Pembayaran"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Debit Instant",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Text("Pengiriman"),
          SizedBox(
            height: 10,
          ),
          Text(
            "JNE YES",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Text("Status"),
          SizedBox(
            height: 10,
          ),
          DropdownButton(
            items: _statusList.map((status) {
              return DropdownMenuItem(
                child: new Text(status),
                value: status,
              );
            }).toList(),
            hint: Text("Pilih Kategori"),
            value: _statusValue,
            onChanged: (String? value) {
              setState(() {
                _statusValue = value;
              });
            },
            isExpanded: true,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Text("Nomor Resi"),
          SizedBox(
            height: 10,
          ),
          Text(
            "7124ASDFAFX",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Text("Invoice"),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "INV/20210719/MPL/1422095225",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "LIHAT",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          TextButton(
              onPressed: () {},
              child: Text(
                "Batalkan",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 18),
              )),
        ],
      ),
    );
  }
}
