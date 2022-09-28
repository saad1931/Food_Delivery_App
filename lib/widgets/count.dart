import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors.dart';

class Count extends StatefulWidget {
  const Count({Key? key}) : super(key: key);

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int count = 1;
  bool isTrue = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:  113,
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
                      onTap:(){
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
                      },
                      child:
                          Text("Add", style: TextStyle(color: primaryColor))),
                )
                ),
    );
  }
}
