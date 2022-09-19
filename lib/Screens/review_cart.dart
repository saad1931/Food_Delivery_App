import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors.dart';
import 'package:food_delivery/widgets/search_item.dart';


class ReviewCart extends StatelessWidget {
  const ReviewCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCBCBCB),
      bottomNavigationBar:ListTile(
        title:Text("Total Amount",style: TextStyle(color: textColor,fontWeight:FontWeight.bold,),),
        subtitle:Text("\$ 170.0",style: TextStyle(color: Colors.green[900],fontWeight:FontWeight.w500,),),
        trailing: Container(
          width: 160,
          height: 50,
          child: MaterialButton(
            onPressed: (){

            },
            child: Text("Submit",style: TextStyle(color: textColor,fontWeight:FontWeight.bold,),),
            color: primaryColor,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            )
            ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffD6B836),
        title: Text("Review Cart",style: TextStyle(color: textColor)),
      ),
      body:ListView(
        children:[
          SizedBox(height:10),
          SearchItem(
            isBool: true,
          ),
          SearchItem(
            isBool: true,
          ),
          SizedBox(height:10),
        ]
      )
    );
  }
}
