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
    apiKey: 'AIzaSyAv2IGjopH3npgJSb7yjh-PxCFHpv2nObE',
    appId: '1:776668115109:web:e36a09773a432484a65d4c',
    messagingSenderId: '776668115109',
    projectId: 'fir-account2-45224',
    authDomain: 'fir-account2-45224.firebaseapp.com',
    databaseURL: 'https://fir-account2-45224-default-rtdb.firebaseio.com',
    storageBucket: 'fir-account2-45224.appspot.com',
    measurementId: 'G-LH0379E89E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBM-hbcA9rhThZ6KILzHo3Hqr1sny0Jhdg',
    appId: '1:776668115109:android:a24a66ee4144b1c2a65d4c',
    messagingSenderId: '776668115109',
    projectId: 'fir-account2-45224',
    databaseURL: 'https://fir-account2-45224-default-rtdb.firebaseio.com',
    storageBucket: 'fir-account2-45224.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCaF8Y8WMk7sJWYisEi4jdeKUUdJpXfVQQ',
    appId: '1:776668115109:ios:05f59095511f4701a65d4c',
    messagingSenderId: '776668115109',
    projectId: 'fir-account2-45224',
    databaseURL: 'https://fir-account2-45224-default-rtdb.firebaseio.com',
    storageBucket: 'fir-account2-45224.appspot.com',
    iosBundleId: 'com.example.firebaseAccount2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCaF8Y8WMk7sJWYisEi4jdeKUUdJpXfVQQ',
    appId: '1:776668115109:ios:8cabacbddfb24470a65d4c',
    messagingSenderId: '776668115109',
    projectId: 'fir-account2-45224',
    databaseURL: 'https://fir-account2-45224-default-rtdb.firebaseio.com',
    storageBucket: 'fir-account2-45224.appspot.com',
    iosBundleId: 'com.example.firebaseAccount2.RunnerTests',
  );
}
