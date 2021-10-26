import 'package:flutter/material.dart';

class PenjualanScreen extends StatefulWidget {
  // const PenjualanScreen({ Key? key }) : super(key: key);

  @override
  _PenjualanScreenState createState() => _PenjualanScreenState();
}

class _PenjualanScreenState extends State<PenjualanScreen> {
  bool? statusValue;
  var _statusKategoriValue;
  Widget RadioButtonStatus(int aValue, String aLabel) {
    return Row(
      children: [
        Radio(
          value: aValue,
          groupValue: _statusKategoriValue,
          onChanged: (value) {
            setState(() {
              _statusKategoriValue = value;
            });
          },
        ),
        Text(aLabel)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Penjualan"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
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
                Row(
                  children: [
                    Expanded(child: RadioButtonStatus(1, "Selesai")),
                    Expanded(child: RadioButtonStatus(2, "Batal")),
                    Expanded(child: RadioButtonStatus(3, "Proses")),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: (Colors.grey[400])!,
                        blurRadius: 5,
                        spreadRadius: 2.0,
                        offset: Offset(
                          0,
                          0,
                        ),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("15 Juli 2021"),
                          Text(
                            "Selesai",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Divider(),
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
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
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
