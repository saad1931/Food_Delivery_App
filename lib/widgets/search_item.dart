import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors.dart';

class SearchItem extends StatelessWidget {
  bool isBool = false;
  SearchItem({Key? key, required this.isBool}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(children: [
            Expanded(
                child: Container(
              height: 100,
              child: Center(
                  child: Image.network(
                      "https://pngimg.com/uploads/basil/basil_PNG26.png")),
            )),
            Expanded(
              child: Container(
              height: 100,
              child: Column(
                mainAxisAlignment: isBool==false ?MainAxisAlignment.center:MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(" Product Name",
                          style: TextStyle(
                              color: textColor, fontWeight: FontWeight.bold)),
                      Text("50\$/50 Gram",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  isBool == false?
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                      Expanded(
                        child: Text("50 Gram",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              //fontWeight: FontWeight.bold
                            )),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                        color: primaryColor,
                      )
                    ]),
                  ):
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text("50 Gram",
                         style: TextStyle(
                         color: Colors.grey,
                         fontSize: 14,
                         fontWeight: FontWeight.bold
                        )
                     ),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
                    height: 100,
                    padding:isBool==false? EdgeInsets.symmetric(horizontal: 15, vertical: 32):EdgeInsets.only(left: 15,right:15,top: 15),
                    child:isBool==false? 
                    Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: primaryColor, size: 20),
                            Text("Add",
                                style: TextStyle(
                                  color: primaryColor,
                                  //fontWeight: FontWeight.bold
                                )),
                          ],
                        )
                        )
                        ):
                        Column(
                          children:[
                        Icon(Icons.delete,size:30,color: Colors.black54,),
                        SizedBox(height:5),
                        Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: primaryColor, size: 20),
                            Text("Add",
                                style: TextStyle(
                                  color: primaryColor,
                                  //fontWeight: FontWeight.bold
                                )),
                          ],
                        )
                        )
                        )
                          ]
                        )
                        )
                        ),
                        
          ]),
        ),
        isBool==false? 
                    Container():
                    Divider(
                      height:1,
                      color:Colors.black45
                    )
      ],
    );
  }
}
