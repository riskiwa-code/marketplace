import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:marketplace/widgets/product_keranjang.dart';

class pengirimanScreen extends StatefulWidget {
  // const PengirimanScreen({ Key? key }) : super(key: key);

  @override
  _pengirimanScreenState createState() => _pengirimanScreenState();
}

class _pengirimanScreenState extends State<pengirimanScreen> {
  String _kotaValue;
  List<String> _kotaList = ['Aceh', 'DKI Jakarta', 'JogjaKarta', 'Bali'];

  String _metodePembayaranValue;
  List<String> _metodePembayaranList = [
    'Debit Instant',
    'Kredit',
  ];

  String _metodePengirimanValue;
  List<String> _metodePengirimanList = [
    'JNE',
    'SiCepat',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Pengiriman"),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.store_mall_directory_rounded),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Toko Elektronik"),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ProductKeranjang(),
                    SizedBox(
                      height: 24,
                    ),
                    ProductKeranjang(),
                  ],
                ),
              ),
              Container(
                height: 10,
                color: Colors.grey[200],
              ),
              Container(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pengiriman",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text("Nama"),
                    TextField(
                      decoration: InputDecoration(hintText: "Nama"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Alamat"),
                    TextField(
                      decoration: InputDecoration(hintText: "Alamat"),
                    ),
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
                      hint: Text("Kota"),
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
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Kode Pos",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Nomor Telepon"),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Nomor Telepon",
                      ),
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
                      hint: Text("Metode Pembayaran"),
                      value: _metodePembayaranValue,
                      onChanged: (String value) {
                        setState(() {
                          _metodePembayaranValue = value;
                        });
                      },
                      isExpanded: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Atur Metode Pengiriman"),
                    DropdownButton(
                      items: _metodePengirimanList.map((metodePengiriman) {
                        return DropdownMenuItem(
                          child: new Text(metodePengiriman),
                          value: metodePengiriman,
                        );
                      }).toList(),
                      hint: Text("Metode Pengiriman"),
                      value: _metodePengirimanValue,
                      onChanged: (String value) {
                        setState(() {
                          _metodePengirimanValue = value;
                        });
                      },
                      isExpanded: true,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ExpandableNotifier(
                child: ScrollOnExpand(
                  child: Column(
                    children: <Widget>[
                      Expandable(
                        collapsed: SizedBox(),
                        expanded: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            color: Color(0xffF6F5F5),
                          ),
                          padding: EdgeInsets.all(24),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                                child: Text("Rincian Harga",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Harman Kardon Onyx 4"),
                                  Text(
                                    "RP. 1,000,000",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 5,
                                color: Colors.white,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Harman Kardon Onyx 4"),
                                  Text(
                                    "RP. 1,000,000",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                      ),
                      Container(
                        padding: EdgeInsets.all(24),
                        color: Color(0xffF6F5F5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Builder(
                              builder: (context) {
                                var controller = ExpandableController.of(
                                    context,
                                    required: true);
                                return InkWell(
                                  onTap: () {
                                    controller.toggle();
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        child: Icon(
                                          controller.expanded
                                              ? Icons.expand_less_rounded
                                              : Icons.expand_more_rounded,
                                        ),
                                      ),
                                      Flexible(child: Text("Total Harga")),
                                    ],
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp. 1,000,000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Beli (2)"))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
