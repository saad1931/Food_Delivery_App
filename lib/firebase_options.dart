// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBEHWwILi_OqBI2g4CevpWaftVriiL4A2Y',
    appId: '1:845633110174:web:53c5518dfc779fefec3b8f',
    messagingSenderId: '845633110174',
    projectId: 'food-delivery-2b6fe',
    authDomain: 'food-delivery-2b6fe.firebaseapp.com',
    storageBucket: 'food-delivery-2b6fe.appspot.com',
    measurementId: 'G-QNKNX63FJE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3WpYCPwZWZWLePXQ31S2TXxKzZCfxo0w',
    appId: '1:845633110174:android:204d013b47ddce40ec3b8f',
    messagingSenderId: '845633110174',
    projectId: 'food-delivery-2b6fe',
    storageBucket: 'food-delivery-2b6fe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3HtQi6uAdMHO0Lks4QlLVrIpqB0j3GSc',
    appId: '1:845633110174:ios:bf2dc7c10f07b6b5ec3b8f',
    messagingSenderId: '845633110174',
    projectId: 'food-delivery-2b6fe',
    storageBucket: 'food-delivery-2b6fe.appspot.com',
    iosClientId: '845633110174-622s1vgg6liemeaq1q7h68bhpn6ndoin.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodDelivery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC3HtQi6uAdMHO0Lks4QlLVrIpqB0j3GSc',
    appId: '1:845633110174:ios:bf2dc7c10f07b6b5ec3b8f',
    messagingSenderId: '845633110174',
    projectId: 'food-delivery-2b6fe',
    storageBucket: 'food-delivery-2b6fe.appspot.com',
    iosClientId: '845633110174-622s1vgg6liemeaq1q7h68bhpn6ndoin.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodDelivery',
  );
}
