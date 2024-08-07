// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCHb_Y5CxjEdXoN-uOI6nEHFiX8uNjoxn8',
    appId: '1:1007590642302:web:f8920584b5b7e0e9347e2f',
    messagingSenderId: '1007590642302',
    projectId: 'push-notification-ad070',
    authDomain: 'push-notification-ad070.firebaseapp.com',
    storageBucket: 'push-notification-ad070.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDezxLY2Eq24r0gU4igad4eCypi6S-YP2Y',
    appId: '1:1007590642302:android:0f98d24622eef748347e2f',
    messagingSenderId: '1007590642302',
    projectId: 'push-notification-ad070',
    storageBucket: 'push-notification-ad070.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpaoq-twjecV71g4QI0nXvjxSvFLOZnyE',
    appId: '1:1007590642302:ios:4ff72d550b04bc98347e2f',
    messagingSenderId: '1007590642302',
    projectId: 'push-notification-ad070',
    storageBucket: 'push-notification-ad070.appspot.com',
    iosBundleId: 'com.example.try1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDpaoq-twjecV71g4QI0nXvjxSvFLOZnyE',
    appId: '1:1007590642302:ios:4ff72d550b04bc98347e2f',
    messagingSenderId: '1007590642302',
    projectId: 'push-notification-ad070',
    storageBucket: 'push-notification-ad070.appspot.com',
    iosBundleId: 'com.example.try1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCHb_Y5CxjEdXoN-uOI6nEHFiX8uNjoxn8',
    appId: '1:1007590642302:web:cf98513e25b2ef51347e2f',
    messagingSenderId: '1007590642302',
    projectId: 'push-notification-ad070',
    authDomain: 'push-notification-ad070.firebaseapp.com',
    storageBucket: 'push-notification-ad070.appspot.com',
  );
}
