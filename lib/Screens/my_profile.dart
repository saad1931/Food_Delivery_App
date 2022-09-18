import 'package:flutter/material.dart';
import 'package:food_delivery/config/colors.dart';
import 'package:food_delivery/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget listttile({required IconData icon,required String title}) {
    return Column(
      children:[
        Divider(
          height:1
        ),
        ListTile(
          leading:Icon(icon),
          title:Text(title),
          trailing: Icon(Icons.arrow_forward_ios)
        )
      ]
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
            iconTheme: IconThemeData(color: textColor),
            backgroundColor: primaryColor,
            elevation: 0.0,
            title: Text("My Profile",
                style: TextStyle(color: textColor, fontSize: 18))),
        body: Stack(children: [
          Column(children: [
            Container(height: 100, color: primaryColor),
            Container(
                height: 548,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        width: 260,
                        height: 80,
                        // color: Colors.red,
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Muhammad Saad",
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 10),
                                  Text("Muhammadsaad3119@gmail.com",
                                      style:TextStyle(
                                        color: Colors.black,
                                        // fontSize: 13,
                                      ))
                                ]),
                            CircleAvatar(
                              radius: 13,
                              backgroundColor: primaryColor,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: scaffoldBackgroundColor,
                                child: Icon(
                                  Icons.edit,
                                  color: primaryColor,
                                  size: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                  listttile(
                    icon: Icons.shop_outlined,
                    title: "My Orders"
                    ),
                  listttile(
                    icon: Icons.location_on_outlined,
                    title: "My Delivery Address"
                    ),
                  listttile(
                    icon: Icons.person_outlined,
                    title: "Refer Friends"
                    ),
                  listttile(
                    icon: Icons.file_copy_outlined,
                    title: "Terms & Conditions"
                    ),
                  listttile(
                    icon: Icons.policy_outlined,
                    title: "Privacy Policy"
                    ),
                  listttile(
                    icon: Icons.add_chart,
                    title: "About"
                    ),
                  listttile(
                    icon: Icons.exit_to_app_outlined,
                    title: "Log Out"
                    ),        
                ]
                ))
          ]),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                  backgroundColor: scaffoldBackgroundColor,
                  radius: 45,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/54960609?s=400&u=964299ada1705dc4a0f31506cb85ee703f4d059f&v=4")),
            ),
          )
        ]),
        drawer: DrawerWidget(context));
  }
}
