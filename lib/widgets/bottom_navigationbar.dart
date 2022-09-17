import 'package:flutter/material.dart';

Widget BottomNavigationBars(
  {
    Color? iconcolor,
    Color?   backgroundcolor,
    Color? color,
    required String title,
    IconData? icondata
  }
) {
  return Expanded(
    child: Container(
      padding:EdgeInsets.all(20),
      color: backgroundcolor,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
          Icon(
            icondata,
            size:20,
            color:iconcolor
          ),
          SizedBox(width: 5,),
          Text(
            title,
            style: TextStyle(
            color:color
            ),
          ),
        ]
      )
    ),
    );
}
