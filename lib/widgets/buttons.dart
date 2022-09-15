import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/home.dart';
import 'package:food_delivery/services/firebase_services.dart';
import 'package:google_sign_in/google_sign_in.dart';

Widget btn1(txt, img,context) {
  return SizedBox(
    height: 50,
    width: 250,
    child: ElevatedButton(
      // onPressed: () async {
      //             await FirebaseServices().signInWithGoogle();
                  // Navigator.pushReplacement(context,
                  // MaterialPageRoute(builder: (context) =>const Home()));
      //           },
      onPressed: (){
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) =>const Home()));
      },
      //child: Text("Login with Google",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,),)
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.black26;
        }
        return Color(0xffD8D8D8);
      })),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                img,
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                txt,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
