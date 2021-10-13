import 'package:flutter/material.dart';

class KategoriScreen extends StatefulWidget {
  // const KategoriScreen({ Key? key }) : super(key: key);

  @override
  _KategoriScreenState createState() => _KategoriScreenState();
}

class _KategoriScreenState extends State<KategoriScreen> {
  bool kategoriValue;
  var _groupKategoriValue;
  var _groupMerkValue;
  var _groupTokoValue;

  Widget RadioButtonKategori(int aValue, String aLabel) {
    return Row(
      children: [
        Radio(
          value: aValue,
          groupValue: _groupKategoriValue,
          onChanged: (value) {
            setState(() {
              _groupKategoriValue = value;
              print(value);
            });
          },
        ),
        Text(aLabel)
      ],
    );
  }

  Widget ProductCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5,
      child: Container(
        width: 170,
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/img/product-1.png",
                fit: BoxFit.fill,
                height: 100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Toko Mas Agus",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Pop Mie"),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Rp. 5,000",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                child: Text("Beli"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Makanan"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(24),
              child: Stack(
                children: [
                  Column(
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
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 10, 10, 0),
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
                          RadioButtonKategori(1, "Basah"),
                          RadioButtonKategori(2, "Beras"),
                          RadioButtonKategori(3, "Ekspor"),
                        ],
                      ),
                      Row(
                        children: [
                          RadioButtonKategori(4, "Kering"),
                          RadioButtonKategori(5, "Impor"),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: -10,
                    child: Text("111111111"),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
