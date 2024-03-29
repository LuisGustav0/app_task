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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBbpM5lf7H9rvznv6D6imxjplHsU3A8-7Y',
    appId: '1:446270531915:web:981b9049c9facac1c8e0ce',
    messagingSenderId: '446270531915',
    projectId: 'app-task-a5de3',
    authDomain: 'app-task-a5de3.firebaseapp.com',
    storageBucket: 'app-task-a5de3.appspot.com',
    measurementId: 'G-6SP2HB5NTZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBRZlTH57b65anXkSnwRJFa2mOwSs3KxF8',
    appId: '1:446270531915:android:3805a4a7bcba9dd8c8e0ce',
    messagingSenderId: '446270531915',
    projectId: 'app-task-a5de3',
    storageBucket: 'app-task-a5de3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDte-MkDcM0f7RHeo3rFQTmL8EHMKoAOWA',
    appId: '1:446270531915:ios:05d46873733b99c4c8e0ce',
    messagingSenderId: '446270531915',
    projectId: 'app-task-a5de3',
    storageBucket: 'app-task-a5de3.appspot.com',
    iosClientId: '446270531915-1p4ccqtd8gvng73arc5r19tgudocv9ig.apps.googleusercontent.com',
    iosBundleId: 'com.innovation.appTask',
  );
}
