import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/review_cart.dart';
import 'package:food_delivery/Screens/search.dart';
import 'package:food_delivery/providers/product_provider.dart';
import 'package:food_delivery/widgets/drawer.dart';
import 'package:food_delivery/widgets/product.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ProductProvider productProvider;
  @override
  void initState() {
    // TODO: implement initState
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.FetchHerbsProductsData();
    productProvider.FetchFruitsProductsData();
    productProvider.FetchRootProductsData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);
    return Scaffold(
      backgroundColor: Color(0xffCBCBCB),
      drawer: DrawerWidget(context),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffD6B836),
        title: Text(
          "Home",
          style: GoogleFonts.poppins(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xffD6D282),
            radius: 18,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Search(search: productProvider.getAllproducts)));
              },
              icon: Icon(
                Icons.search,
                size: 18,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Color(0xffD6D282),
              radius: 18,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ReviewCart()));
                  },
                  icon: Icon(
                    Icons.shop,
                    size: 18,
                    color: Colors.black,
                  )),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://st4.depositphotos.com/4590583/30020/i/450/depositphotos_300206048-stock-photo-fresh-vegetables-fruits-black-background.jpg")),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 280,
                            ),
                            child: Container(
                              height: 55,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Color(0xffD6B836),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50))),
                              child: Center(
                                child: Text(
                                  'Vegi',
                                  style: GoogleFonts.patrickHand(
                                      fontSize: 30,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                          blurRadius: 5,
                                          color: Color.fromARGB(255, 2, 57, 6),
                                          offset: Offset(3, 3),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          //SizedBox(height: 10,),
                          Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 300,
                                //color: Colors.red,
                              ),
                              Positioned(
                                  right: 180,
                                  top: 5,
                                  child: Text(
                                    "30% Off",
                                    style: GoogleFonts.poppins(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      // shadows: [
                                      //        BoxShadow(
                                      //         blurRadius: 5,
                                      //         color: Color.fromARGB(255, 2, 57, 6),
                                      //         offset: Offset(3, 3),
                                      //       ),
                                      //   ]
                                    ),
                                  )),
                              Positioned(
                                  right: 140,
                                  top: 45,
                                  child: Text(
                                    "On all vegetables products",
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Herb Seasonings",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Search(
                                search: productProvider.getHerbsProductDataList,
                              )));
                    },
                    child: Text("View All",
                        style: GoogleFonts.poppins(
                            fontSize: 17, color: Colors.black)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: productProvider.getHerbsProductDataList.map(
                    (herbsProductData) {
                      return Product(
                        productname: herbsProductData.productName,
                        productimage: herbsProductData.productImage,
                        productprice: herbsProductData.productPrice,
                        productid: herbsProductData.productId);
                    },
                  ).toList(),
                  // children: [
                  //   Product(context),
                  //   Product(context),
                  //   Product(context),
                  //   Product(context),
                  //   Product(context),
                  //   Product(context),
                  // ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fresh Fruits",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Search(
                                search:
                                    productProvider.getFruitsProductsDataList,
                              )));
                    },
                    child: Text("View All",
                        style: GoogleFonts.poppins(
                            fontSize: 17, color: Colors.black)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: productProvider.getFruitsProductsDataList.map(
                    (fruitsProductData) {
                      return Product(
                          productname: fruitsProductData.productName,
                          productimage: fruitsProductData.productImage,
                          productprice: fruitsProductData.productPrice,
                          productid: fruitsProductData.productId);
                    },
                  ).toList(),
                  // [
                  // Product(context),
                  // Product(context),
                  // Product(context),
                  // Product(context),
                  // Product(context),
                  // Product(context),
                  //],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Root Products",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Search(
                                search: productProvider.getRootProductsDataList,
                              )));
                    },
                    child: Text("View All",
                        style: GoogleFonts.poppins(
                            fontSize: 17, color: Colors.black)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: productProvider.getRootProductsDataList.map(
                    (rootProductData) {
                      return Product(
                          productname: rootProductData.productName,
                          productimage: rootProductData.productImage,
                          productprice: rootProductData.productPrice,
                          productid: rootProductData.productId);
                    },
                  ).toList(),
                  // [
                  // Product(context),
                  // Product(context),
                  // Product(context),
                  // Product(context),
                  // Product(context),
                  // Product(context),
                  //],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
