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
    apiKey: 'AIzaSyCzVo4sLtedAY7QcNh7uQQGarkxQInBBRM',
    appId: '1:143599255966:web:50dee65ccf2e8536a7d68f',
    messagingSenderId: '143599255966',
    projectId: 'smart-charging-echo-system-app',
    authDomain: 'smart-charging-echo-system-app.firebaseapp.com',
    storageBucket: 'smart-charging-echo-system-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8-1gId9LbRgASweB0eKsep5KFzDqi2dw',
    appId: '1:143599255966:android:35a9efee0e71124fa7d68f',
    messagingSenderId: '143599255966',
    projectId: 'smart-charging-echo-system-app',
    storageBucket: 'smart-charging-echo-system-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyChQbUhXue391Po4wkJ7GXNrOezHBpW2DU',
    appId: '1:143599255966:ios:74710726ed1e6354a7d68f',
    messagingSenderId: '143599255966',
    projectId: 'smart-charging-echo-system-app',
    storageBucket: 'smart-charging-echo-system-app.appspot.com',
    iosBundleId: 'com.example.smartChargingEchoSystemApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyChQbUhXue391Po4wkJ7GXNrOezHBpW2DU',
    appId: '1:143599255966:ios:f325e041517dfa4ca7d68f',
    messagingSenderId: '143599255966',
    projectId: 'smart-charging-echo-system-app',
    storageBucket: 'smart-charging-echo-system-app.appspot.com',
    iosBundleId: 'com.example.smartChargingEchoSystemApp.RunnerTests',
  );
}
