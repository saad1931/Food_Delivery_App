import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/product_overview.dart';
import 'package:food_delivery/widgets/count.dart';
import 'package:google_fonts/google_fonts.dart';



Widget Product(BuildContext context,productname,productimage,productprice) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    height: 300,
    width: 238,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xffd9dad9)),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductOverview(productImage: productimage,productName:productname,productPrice:productprice ,)));
        },
        child: Center(
            child: Container(
              height: 200,
              width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(productimage),
            ),
          ),
          ),),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(productname,
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            Text("$productprice\$/50 Gram",
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
                  width: 113,
                  child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "50 Gram",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.yellow,
                            // size: 18,
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  width: 3,
                ),
               Count()
              ],
            )
          ],
        ),
      )
    ]),
  );
}
