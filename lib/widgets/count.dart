// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:food_delivery/config/colors.dart';
import 'package:food_delivery/providers/review_cart_provider.dart';

class Count extends StatefulWidget {
  String cartId;
  String cartName;
  String cartImage;
  int cartPrice;

  Count({
    Key? key,
    required this.cartId,
    required this.cartName,
    required this.cartImage,
    required this.cartPrice,
  }) : super(key: key);

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int count = 1;
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    return Container(
      width: 113,
      child: OutlinedButton(
          onPressed: () {},
          child: isTrue == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        if (count == 1) {
                          setState(() {
                            isTrue == false;
                          });
                        } else if (count > 1) {
                          setState(() {
                            count--;
                          });
                        }
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.yellow,
                      ),
                    ),
                    Text(
                      "$count",
                      style: TextStyle(color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                )
              : Center(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue == true;
                        });
                        reviewCartProvider.addReviewCartData(
                            cartId: widget.cartId,
                            cartName: widget.cartName,
                            cartImage: widget.cartImage,
                            cartPrice: widget.cartPrice,
                            cartQuantity: count);
                      },
                      child:
                          Text("Add", style: TextStyle(color: primaryColor))),
                )),
    );
  }
}
