import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors.dart';
import 'package:food_delivery/providers/wish_list_provider.dart';
import 'package:food_delivery/widgets/bottom_navigationbar.dart';
import 'package:provider/provider.dart';

enum radiocharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final String productName;
  final String productImage;
  final int productPrice;
  final String productId;
  //final String productQuantity;
  ProductOverview(
      {required this.productName,
      required this.productImage,
      required this.productPrice,
      required this.productId,
      //required this.productQuantity
      });
  //const ProductOverview({Key? key}) : super(key: key);

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  radiocharacter _character = radiocharacter.fill;
  bool wishListBool = false;
  @override
  Widget build(BuildContext context) {
    WishListProvider wishListProvider = Provider.of(context);
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          Expanded(
      child: GestureDetector(
         onTap: () {
              setState(() {
                wishListBool = !wishListBool;
              });
             if (wishListBool == true) {
                  wishListProvider.addWishListData(
                    wishListId: widget.productId,
                    wishListImage: widget.productImage,
                    wishListName: widget.productName,
                    wishListPrice: widget.productPrice,
                    wishListQuantity: 2,
                    
                  );
                } else {
                  wishListProvider.deleteWishtList(widget.productId);
                }
         },
        child: Container(
          padding:EdgeInsets.all(20),
          color: textColor,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Icon(
                wishListBool == false
                    ? Icons.favorite_outline
                    : Icons.favorite,
                size:20,
                color:Colors.white
              ),
              SizedBox(width: 5,),
              Text(
                "Add to WishList",
                style: TextStyle(
                color:Colors.white
                ),
              ),
            ]
          )
        ),
      ),
    
    ),
          // GestureDetector(
          //   onTap: () {
          //     setState(() {
          //       wishListBool = !wishListBool;
          //     });
          //    if (wishListBool == true) {
          //         wishListProvider.addWishListData(
          //           wishListId: widget.productId,
          //           wishListImage: widget.productImage,
          //           wishListName: widget.productName,
          //           wishListPrice: widget.productPrice,
          //           wishListQuantity: 2,
                    
          //         );
          //       } else {
          //         wishListProvider.deleteWishtList(widget.productId);
          //       }
          //   },
          //   child: BottomNavigationBars(
          //     backgroundcolor: textColor,
          //     color: Colors.white,
          //     iconcolor: Colors.white,
          //     title: "Add to WishList",
          //     icondata: wishListBool == false
          //         ? Icons.favorite_outline
          //         : Icons.favorite,
          //   ),
          // ),
          BottomNavigationBars(
            backgroundcolor: primaryColor,
            color: Colors.white,
            iconcolor: Colors.white,
            title: "Go to Cart",
            icondata: Icons.shop,
          ),
        ],
      ),
      appBar: AppBar(
          backgroundColor: primaryColor,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Product Overview", style: TextStyle(color: textColor))),
      body: Column(children: [
        Container(
            //flex: 2,
            child: Container(
          width: double.infinity,
          child: Column(
            children: [
              ListTile(
                  title: Text(widget.productName,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600)),
                  subtitle: Text("\$${widget.productPrice}",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w500))),
              Container(
                  height: 250,
                  padding: EdgeInsets.all(40),
                  child: Image.network(widget.productImage)),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Availaible Options",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 3, backgroundColor: Colors.green[700]),
                          Radio(
                              value: radiocharacter.fill,
                              groupValue: _character,
                              activeColor: Colors.green[700],
                              onChanged: (radiocharacter? value) {
                                setState(() {
                                  _character = value!;
                                });
                              }),
                          SizedBox(width: 50),
                          Text("\$50"),
                          SizedBox(width: 50),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add, size: 18, color: primaryColor),
                                Text("Add",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          )
                        ],
                      )
                    ]),
              )
            ],
          ),
        )),
        Container(
          child: Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About Product",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Basil, also called great basil, is a culinary herb of the family Lamiaceae. It is a tender plant, and is used in cuisines worldwide. In Western cuisine, the generic term basil refers to the variety also known as sweet basil or Genovese basil. Basil is native to tropical regions from Central Africa to Southeast Asia.",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500)),
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}
