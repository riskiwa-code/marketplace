import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:marketplace/model/ProductModel.dart';

class ProductProvider {
  static Future<List<ProductModel>> getUsersLocally(
      BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/json/product.json');
    final body = json.decode(data);

    return body.map<ProductModel>(ProductModel.fromJson).toList();
  }
}
