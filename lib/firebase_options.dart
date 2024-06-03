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
    apiKey: 'AIzaSyBAYw9D_akRCXqDchm6ljhOwvKzsQp3-Tk',
    appId: '1:1061556797881:web:6dfb523324f74a57d2f668',
    messagingSenderId: '1061556797881',
    projectId: 'audio-vedio-player',
    authDomain: 'audio-vedio-player.firebaseapp.com',
    storageBucket: 'audio-vedio-player.appspot.com',
    measurementId: 'G-YF1KP9ZNHE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB3pGNpynhURGBq3xlHzpS-6Hc3eE_EXMs',
    appId: '1:1061556797881:android:3e4eeed996c045abd2f668',
    messagingSenderId: '1061556797881',
    projectId: 'audio-vedio-player',
    storageBucket: 'audio-vedio-player.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMtLsyUwLIu0Ze95pFkTIoOhlBvMOPiEA',
    appId: '1:1061556797881:ios:3ef2d1ba024c907ad2f668',
    messagingSenderId: '1061556797881',
    projectId: 'audio-vedio-player',
    storageBucket: 'audio-vedio-player.appspot.com',
    iosBundleId: 'com.example.audioVedioPlayerFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMtLsyUwLIu0Ze95pFkTIoOhlBvMOPiEA',
    appId: '1:1061556797881:ios:3ef2d1ba024c907ad2f668',
    messagingSenderId: '1061556797881',
    projectId: 'audio-vedio-player',
    storageBucket: 'audio-vedio-player.appspot.com',
    iosBundleId: 'com.example.audioVedioPlayerFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBAYw9D_akRCXqDchm6ljhOwvKzsQp3-Tk',
    appId: '1:1061556797881:web:a5d3d4308922edf3d2f668',
    messagingSenderId: '1061556797881',
    projectId: 'audio-vedio-player',
    authDomain: 'audio-vedio-player.firebaseapp.com',
    storageBucket: 'audio-vedio-player.appspot.com',
    measurementId: 'G-7G2NSVTDM0',
  );
}
