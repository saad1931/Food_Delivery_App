import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  late ProductModel productModel;

  List<ProductModel> search = [];
  ProductModels(QueryDocumentSnapshot element) {
    productModel = ProductModel(
        productId: element.get("ProductId"),
        productName: element.get("ProductName"),
        productImage: element.get("ProductImage"),
        productPrice: element.get("ProductPrice"));
    search.add(productModel);
  }

  //HerbProducts Provider
  List<ProductModel> HerbProductsList = [];
  FetchHerbsProductsData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbProducts").get();

    //ProductModel productModel;
    value.docs.forEach((element) {
      ProductModels(element);
      newList.add(productModel);
    });
    HerbProductsList = newList;
    notifyListeners();
  }

  List<ProductModel> get getHerbsProductDataList {
    return HerbProductsList;
  }

  //FruitProducts
  List<ProductModel> FruitProductsList = [];
  FetchFruitsProductsData() async {
    List<ProductModel> newList2 = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("FruitProducts").get();

    //ProductModel productModel;
    value.docs.forEach((element) {
      ProductModels(element);
      newList2.add(productModel);
    });
    FruitProductsList = newList2;
    notifyListeners();
  }

  List<ProductModel> get getFruitsProductsDataList {
    return FruitProductsList;
  }

  //RootProducts
  List<ProductModel> RootProductsList = [];
  FetchRootProductsData() async {
    List<ProductModel> newList3 = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("RootProducts").get();

    //ProductModel productModel;
    value.docs.forEach((element) {
      ProductModels(element);
      newList3.add(productModel);
    });
    RootProductsList = newList3;
    notifyListeners();
  }

  List<ProductModel> get getRootProductsDataList {
    return RootProductsList;
  }


  //getallproducts
  List<ProductModel> get getAllproducts {
    return search;
  }
}
