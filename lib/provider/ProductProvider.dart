// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:marketplace/model/ProdukModel.dart';

// class ProductProvider {
//   static Future<List<ProdukModel>> getUsersLocally(BuildContext context) async {
//     final assetBundle = DefaultAssetBundle.of(context);
//     final data = await assetBundle.loadString('assets/json/product.json');
//     final body = await json.decode(data);

//     return await body.map<ProdukModel>(ProdukModel.fromJson).toList();
//   }
// }
