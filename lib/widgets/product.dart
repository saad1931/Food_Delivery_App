

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Product() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    height: 310,
    width: 250,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xffd9dad9)),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Center(
                child: Image.network("https://pngimg.com/uploads/basil/basil_PNG26.png")),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fresh Basil",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Text("50\$/50 Gram",
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
                      width: 115,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "50 Gram",
                                style: TextStyle(color: Colors.black),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.yellow,
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      width: 115,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.remove,
                              color: Colors.yellow,
                            ),
                            Text(
                              "1",
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
         )
          ]
          ),
        );
      
    
  
}
