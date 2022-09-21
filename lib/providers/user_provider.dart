import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  void adUserData(User currentUser,String UserName,String UserImage,String UserEmail) async {
    await FirebaseFirestore.instance.collection("UserData").doc(currentUser.uid).set({
      "userName":UserName,
      "userImage":UserImage,
      "userEmail":UserEmail,
      "userId":currentUser.uid
    });
  }
}
