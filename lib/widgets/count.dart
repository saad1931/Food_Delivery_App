// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:food_delivery/config/colors.dart';
import 'package:food_delivery/providers/review_cart_provider.dart';

class Count extends StatefulWidget {
  String productName;
  String productImage;
  String productId;
  int productPrice;
  var productUnit;

  Count({
    required this.productName,
    this.productUnit,
    required this.productId,
    required this.productImage,
    required this.productPrice,
  });
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int count = 1;
  bool isTrue = false;

  getAddAndQuantity() {
    FirebaseFirestore.instance
        .collection("ReviewCart")
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection("YourReviewCart")
        .doc(widget.productId)
        .get()
        .then(
          (value) => {
            if (this.mounted)
              {
                if (value.exists)
                  {
                    setState(() {
                      count = value.get("cartQuantity");
                      isTrue = value.get("isAdd");
                    })
                  }
              }
          },
        );
  }

  @override
  Widget build(BuildContext context) {
    getAddAndQuantity();

    ReviewCartProvider reviewCartProvider = Provider.of(context);
    return Container(
      height: 25,
      width: 113,
     decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: isTrue == true
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (count == 1) {
                      setState(() {
                        isTrue = false;
                      });
                      reviewCartProvider.reviewCartDataDelete(widget.productId);
                    } else if (count > 1) {
                      setState(() {
                        count--;
                      });
                      reviewCartProvider.updateReviewCartData(
                        cartId: widget.productId,
                        cartImage: widget.productImage,
                        cartName: widget.productName,
                        cartPrice: widget.productPrice,
                        cartQuantity: count,
                      );
                    }
                  },
                  child: Icon(
                    Icons.remove,
                    size: 15,
                    color: Color(0xffd0b84c),
                  ),
                ),
                Text(
                  "$count",
                  style: TextStyle(
                    color: Color(0xffd0b84c),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                    reviewCartProvider.updateReviewCartData(
                      cartId: widget.productId,
                      cartImage: widget.productImage,
                      cartName: widget.productName,
                      cartPrice: widget.productPrice,
                      cartQuantity: count,
                    );
                  },
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: Color(0xffd0b84c),
                  ),
                ),
              ],
            )
          : Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isTrue = true;
                  });
                  reviewCartProvider.addReviewCartData(
                    cartId: widget.productId,
                    cartImage: widget.productImage,
                    cartName: widget.productName,
                    cartPrice: widget.productPrice,
                    cartQuantity: count,
                    cartUnit: widget.productUnit,
                  );
                },
                child: Text(
                  "ADD",
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ),
    );
  }
}