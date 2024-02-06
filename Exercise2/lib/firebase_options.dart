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
    apiKey: 'AIzaSyAS-qL4KJvtZR_o7sSENfr3lXfQSyJrc-0',
    appId: '1:610488669766:web:c308777fa2660aac009c47',
    messagingSenderId: '610488669766',
    projectId: 'localist-16fcf',
    authDomain: 'localist-16fcf.firebaseapp.com',
    storageBucket: 'localist-16fcf.appspot.com',
    measurementId: 'G-XK1Y6PHCK2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWJdd3Ovr4uMX3CUJkUQ7IhAFEHz4tYss',
    appId: '1:610488669766:android:6bcd79299b6f8ee8009c47',
    messagingSenderId: '610488669766',
    projectId: 'localist-16fcf',
    storageBucket: 'localist-16fcf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLbUXAJn3MjBvZhtWBRqa6qGKNEIoXVfU',
    appId: '1:610488669766:ios:7dce820b1d1c9fab009c47',
    messagingSenderId: '610488669766',
    projectId: 'localist-16fcf',
    storageBucket: 'localist-16fcf.appspot.com',
    iosBundleId: 'com.example.localist',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBLbUXAJn3MjBvZhtWBRqa6qGKNEIoXVfU',
    appId: '1:610488669766:ios:c7b5970081cd6c31009c47',
    messagingSenderId: '610488669766',
    projectId: 'localist-16fcf',
    storageBucket: 'localist-16fcf.appspot.com',
    iosBundleId: 'com.example.localist.RunnerTests',
  );
}
