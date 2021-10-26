import 'package:flutter/material.dart';
import 'package:marketplace/model/ProdukModel.dart';
import 'package:marketplace/provider/ProductProvider.dart';

class TestScreen extends StatefulWidget {
  // const TestScreen({ Key? key }) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  Map kota = {};

  Widget ListProduct(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final product = data[index];
          return ListTile(
            title: Column(
              children: [
                Text(product.id),
                Text(product.namaToko),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: FutureBuilder<List<ProdukModel>>(
        //   future: ProductProvider.getUsersLocally(context),
        //   builder: (context, snapshot) {
        //     final product = snapshot.data;

        //     print(kota);
        //     switch (snapshot.connectionState) {
        //       case ConnectionState.waiting:
        //         return Center(child: CircularProgressIndicator());
        //       default:
        //         if (snapshot.hasError) {
        //           return Center(child: Text('Some error occurred!'));
        //         } else {
        //           return ListProduct(product);
        //         }
        //     }
        //   },
        // ),
        );
  }
}
