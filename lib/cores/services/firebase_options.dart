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
    apiKey: 'AIzaSyCSsgeIw6Lf1my0lXSF9siOWE8ls8Odw1I',
    appId: '1:765676839551:web:25640ebfd09c553939954a',
    messagingSenderId: '765676839551',
    projectId: 'videosurf-4bac5',
    authDomain: 'videosurf-4bac5.firebaseapp.com',
    storageBucket: 'videosurf-4bac5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_CqdsPoiO0Yo4LYBEkEGPbcQTMjGqmUg',
    appId: '1:765676839551:android:8c9af2970a7b505e39954a',
    messagingSenderId: '765676839551',
    projectId: 'videosurf-4bac5',
    storageBucket: 'videosurf-4bac5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASGibMe0HIfc7aBog0d654r58dtq6HynA',
    appId: '1:765676839551:ios:0f4caa0093da673639954a',
    messagingSenderId: '765676839551',
    projectId: 'videosurf-4bac5',
    storageBucket: 'videosurf-4bac5.appspot.com',
    iosBundleId: 'com.example.videoSurf',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASGibMe0HIfc7aBog0d654r58dtq6HynA',
    appId: '1:765676839551:ios:0f4caa0093da673639954a',
    messagingSenderId: '765676839551',
    projectId: 'videosurf-4bac5',
    storageBucket: 'videosurf-4bac5.appspot.com',
    iosBundleId: 'com.example.videoSurf',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCSsgeIw6Lf1my0lXSF9siOWE8ls8Odw1I',
    appId: '1:765676839551:web:430def606bbe92f239954a',
    messagingSenderId: '765676839551',
    projectId: 'videosurf-4bac5',
    authDomain: 'videosurf-4bac5.firebaseapp.com',
    storageBucket: 'videosurf-4bac5.appspot.com',
  );
}
