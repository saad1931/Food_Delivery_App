// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:food_delivery/Screens/product_overview.dart';
import 'package:food_delivery/widgets/count.dart';

class Product extends StatefulWidget {
  String productname;
  String productimage;
  int productprice;
  String productid;
  Product({
    Key? key,
    required this.productname,
    required this.productimage,
    required this.productprice,
    required this.productid,
  }) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 300,
      width: 238,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xffd9dad9)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductOverview(
                      productId: widget.productid,
                      productImage: widget.productimage,
                      productName: widget.productname,
                      productPrice: widget.productprice,
                    )));
          },
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(widget.productimage),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.productname,
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 5,
              ),
              Text("${widget.productprice}\$/50 Gram",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.green,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 113,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "50 Gram",
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.yellow,
                              // size: 18,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Count(
                      productId: widget.productid,
                      productName: widget.productname,
                      productImage:widget.productimage,
                      productPrice: widget.productprice)
                ],
              )
            ],
          ),
        )
      ]),
    );
  }

}
