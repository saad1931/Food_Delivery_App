import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background.png'))
          ),
          child: Column(
            children: [
              SizedBox(height: 230,),
              Text("Sign in to continue",style: GoogleFonts.patrickHand(color: Colors.black,fontSize: 25,),),
              SizedBox(height: 20,),
              Image.asset('assets/images/logo.png',height: 80,),
              SizedBox(height: 20,),
              btn1("Sign in with google",'assets/images/google.png' ,context),
              SizedBox(height: 10,),
              btn1("Sign in with apple",'assets/images/apple.png',context ),
             
              SizedBox(height: 20,),
              Text("By signing in you are agreeing to our",style: GoogleFonts.poppins(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),
              Text("Terms and Privacy Policy",style: GoogleFonts.poppins(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),

            ],
          ),
        ),
      ),
    );
  }
}
