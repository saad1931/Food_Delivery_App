import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/home.dart';
import 'package:food_delivery/Screens/my_profile.dart';
import 'package:food_delivery/Screens/product_overview.dart';
import 'package:food_delivery/Screens/review_cart.dart';
import 'package:food_delivery/Screens/search.dart';
import 'package:food_delivery/Screens/sign_in.dart';
import 'package:food_delivery/providers/product_provider.dart';
import 'package:provider/provider.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: FirebaseOptions(
    apiKey: 'AIzaSyA3WpYCPwZWZWLePXQ31S2TXxKzZCfxo0w',
    appId: '1:845633110174:android:204d013b47ddce40ec3b8f',
    messagingSenderId: '845633110174',
    projectId: 'food-delivery-2b6fe',
    storageBucket: 'food-delivery-2b6fe.appspot.com',
    ),
  );
  runApp(MyApp());
}
// void main()  {

//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductProvider>(
      create: (context)=> ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
