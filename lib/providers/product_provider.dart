import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> HerbProductsList = [];
  FetchHerbsProductsData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbProducts").get();

    ProductModel productModel;
    value.docs.forEach((element) {
      // print(element.data());
      productModel = ProductModel(
          productName: element.get("ProductName"),
          productImage: element.get("ProductImage"),
          productPrice: element.get("ProductPrice"));
      newList.add(productModel);
    });
    HerbProductsList = newList;
    notifyListeners();
  }

  List<ProductModel> get getHerbsProductDataList {
    return HerbProductsList;
  }
}
