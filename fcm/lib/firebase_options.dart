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
    apiKey: 'AIzaSyA0U2W9CGgZZ5ahPOLijp5-mp0zUdQQzmQ',
    appId: '1:358185624156:web:fa272b5e6af967a9173c99',
    messagingSenderId: '358185624156',
    projectId: 'fcmexample-1a284',
    authDomain: 'fcmexample-1a284.firebaseapp.com',
    storageBucket: 'fcmexample-1a284.appspot.com',
    measurementId: 'G-4V1XLMQ1JK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMSOk0v70DnZb1iNOT7uT3OWOsiEeQazk',
    appId: '1:358185624156:android:14b8512bb2b5c053173c99',
    messagingSenderId: '358185624156',
    projectId: 'fcmexample-1a284',
    storageBucket: 'fcmexample-1a284.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3ScWLucgVjfebxQMqoUhzivwksNtSllw',
    appId: '1:358185624156:ios:f63b5cc720662830173c99',
    messagingSenderId: '358185624156',
    projectId: 'fcmexample-1a284',
    storageBucket: 'fcmexample-1a284.appspot.com',
    iosClientId: '358185624156-neom98vlacpop0l0nd56l0cnl76u2eqc.apps.googleusercontent.com',
    iosBundleId: 'com.example.fcm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB3ScWLucgVjfebxQMqoUhzivwksNtSllw',
    appId: '1:358185624156:ios:f63b5cc720662830173c99',
    messagingSenderId: '358185624156',
    projectId: 'fcmexample-1a284',
    storageBucket: 'fcmexample-1a284.appspot.com',
    iosClientId: '358185624156-neom98vlacpop0l0nd56l0cnl76u2eqc.apps.googleusercontent.com',
    iosBundleId: 'com.example.fcm',
  );
}