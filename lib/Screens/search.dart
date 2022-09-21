import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/widgets/search_item.dart';

class Search extends StatefulWidget {
  final List<ProductModel> search;

  const Search({super.key, required this.search});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String query = "";
  searchItem(String query) {
    List<ProductModel> searchFood = widget.search.where((element) {
      return element.productName.toLowerCase().contains(query);
    }).toList();
    return searchFood;
  }

  @override
  Widget build(BuildContext context) {
    List<ProductModel> _searchItem = searchItem(query);
    return Scaffold(
      backgroundColor: Color(0xffCBCBCB),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xffD6B836),
          title: Text("Search ", style: TextStyle(color: textColor)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu_rounded),
            )
          ]),
      body: ListView(children: [
        ListTile(
          title: Text("Items"),
        ),
        Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
                onChanged: (value) {
                  setState(() {
                    query = value;
                    
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Color(0xffc2c2c2),
                  filled: true,
                  hintText: "Search for items in store",
                  suffixIcon: Icon(Icons.search),
                ))),
        SizedBox(
          height: 10,
        ),
        Column(
          children: _searchItem.map((data) {
            return SearchItem(
                isBool: false,
                productImage: data.productImage,
                productName: data.productName,
                productPrice: data.productPrice);
          }).toList(),
        ),
        // SearchItem(isBool: false),
        // SearchItem(isBool: false),
        // SearchItem(isBool: false),
        // SearchItem(isBool: false),
        // SearchItem(isBool: false),
        // SearchItem(isBool: false),
      ]),
    );
  }
}
