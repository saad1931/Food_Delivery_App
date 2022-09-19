import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors.dart';
import 'package:food_delivery/widgets/search_item.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCBCBCB),
      appBar:AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffD6B836),
        title: Text("Search ",style: TextStyle(color: textColor)),
        actions:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu_rounded),
          )
        ]
      ),
      body: ListView(
        children:[
          ListTile(
            title: Text("Items"),
          ),
          Container(
            height: 52,
            margin:EdgeInsets.symmetric(horizontal: 20),
            child:TextField(
              decoration:InputDecoration(
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Color(0xffc2c2c2),
                filled:true,
                hintText: "Search for items in store",
                suffixIcon: Icon(Icons.search),
              )
            )
          ),
          SizedBox(height: 10,),
          SearchItem(
            isBool: false
          ),
          SearchItem(
            isBool: false
          ),
          SearchItem(
            isBool: false
          ),
          SearchItem(
            isBool: false
          ),
          SearchItem(
            isBool: false
          ),
          SearchItem(
            isBool: false
          ),
          
        ]
      ),
    );
  }
}
