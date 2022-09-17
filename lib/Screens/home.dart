import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/drawer.dart';
import 'package:food_delivery/widgets/product.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCBCBCB),
      drawer: DrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffD6B836),
        title: Text("Home",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700),),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xffD6D282),
            radius: 18,
            child: Icon(Icons.search,size: 18,color: Colors.black,),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Color(0xffD6D282),
              radius: 18,
              child: Icon(Icons.shop,size: 18,color: Colors.black,),
              ),
          ),
        ],
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://st4.depositphotos.com/4590583/30020/i/450/depositphotos_300206048-stock-photo-fresh-vegetables-fruits-black-background.jpg")),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 280,),
                              child: Container(
                                height: 55,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xffD6B836),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50)
                                  )
                                ),
                                child: Center(
                                  child: Text(
                                    'Vegi',
                                    style: GoogleFonts.patrickHand(
                                      fontSize: 30,
                                      color: Colors.white,
                                      shadows: [ 
                                           BoxShadow(
                                            blurRadius: 5,
                                            color: Color.fromARGB(255, 2, 57, 6),
                                            offset: Offset(3, 3),
                                          )
                                      ]
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Stack(
                              children: [
                                Container(
                                  height: 100,
                                  width: 300,
                                  //color: Colors.red,
                                ),
                                Positioned(
                                  right: 180,
                                  top:5 ,
                                  child: Text("30% Off",
                                  style: GoogleFonts.poppins(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    // shadows: [ 
                                    //        BoxShadow(
                                    //         blurRadius: 5,
                                    //         color: Color.fromARGB(255, 2, 57, 6),
                                    //         offset: Offset(3, 3),
                                    //       ),
                                    //   ]
                                    ),)),
                                  Positioned(
                                  right: 140,
                                  top:45 ,
                                  child: Text("On all vegetables products",
                                  style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    ),))
          
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Herb Seasonings",style: GoogleFonts.poppins(fontSize:20,color: Colors.green,fontWeight: FontWeight.bold)),
                    Text("View All",style: GoogleFonts.poppins(fontSize:17,color: Colors.black)),
                  ],
                ),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Product(context),
                      Product(context),
                      Product(context),
                      Product(context),
                      Product(context),
                      Product(context),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Fresh Fruits",style: GoogleFonts.poppins(fontSize:20,color: Colors.green,fontWeight: FontWeight.bold)),
                    Text("View All",style: GoogleFonts.poppins(fontSize:17,color: Colors.black)),
                  ],
                ),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Product(context),
                      Product(context),
                      Product(context),
                      Product(context),
                      Product(context),
                      Product(context),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
