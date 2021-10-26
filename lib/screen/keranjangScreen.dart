import 'package:flutter/material.dart';
import 'package:marketplace/screen/pengirimanScreen.dart';
import 'package:marketplace/widgets/product_keranjang.dart';
import 'package:expandable/expandable.dart';

class KeranjangPage extends StatefulWidget {
  // const KeranjangPage({ Key? key }) : super(key: key);

  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Keranjang"),
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
                                    controller!.toggle();
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        child: Icon(
                                          controller!.expanded
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
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                pengirimanScreen()),
                                      );
                                    },
                                    child: Text("Beli (2)"))
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
