import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget DrawerWidget() {
  return Drawer(
    child: Container(
      color: Color(0xffD6B836),
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 43,
                    child: CircleAvatar(
                        backgroundColor: Colors.yellow, radius: 40)),
                SizedBox(width: 18),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Welcome to Vegi",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                          SizedBox(height:5),
                  Container(
                    height: 30,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.black87),
                      ),
                      style: OutlinedButton.styleFrom(
                        // shadowColor: Colors.red,
                        // elevation: 10,
                        side: BorderSide(color: Colors.black87 ,width: 2),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  )
                ])
              ],
            ),
          ),
          listtile(icon: Icons.home_outlined, title: "Home"),
          listtile(icon: Icons.shop_outlined, title: "Review Cart"),
          listtile(icon: Icons.man_outlined, title: "My Profile"),
          listtile(icon: Icons.notifications_outlined, title: "Notifications"),
          listtile(icon: Icons.star_outlined, title: "Rating and Reviews"),
          listtile(icon: Icons.favorite_outlined, title: "Wishlist"),
          listtile(icon: Icons.copy_outlined, title: "Raise a Complaint"),
          listtile(icon: Icons.question_answer_outlined, title: "FAQs"),
          SizedBox(height:15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Container(
              height: 100,
              child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold)),
                  SizedBox(height:5),
                  Row(
                    children: [
                      Text("Call Us",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold)),
                       SizedBox(width:10),
                       Text("0348-1133837",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height:5),
                  Row(
                    children: [
                      Text("Mail Us",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold)),
                       SizedBox(width:10),
                       Text("muhammadsaad3119@gmail.com",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500)),
                    ],
                  )
                ],
              )
            ),
          )
        ],
      ),
    ),
  );
}

Widget listtile({required IconData icon, required String title}) {
  return ListTile(
    leading:Icon(
      icon,
      size: 32,
      color: Colors.black87,
    ),
    title:Text(
      title,
      style:TextStyle(color: Colors.black87,fontSize: 16)
    )
  );
}
