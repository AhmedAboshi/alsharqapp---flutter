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
    apiKey: 'AIzaSyDXrWIcBMGL4KY0_rkxsxOmHaYu1OoJRag',
    appId: '1:823054365132:web:95c248d62ab909007ced69',
    messagingSenderId: '823054365132',
    projectId: 'alsharqapp-f9ada',
    authDomain: 'alsharqapp-f9ada.firebaseapp.com',
    storageBucket: 'alsharqapp-f9ada.appspot.com',
    measurementId: 'G-R3JY07227C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASr_elio-dYIZae4BPhRNoXdO0lUZAhX4',
    appId: '1:823054365132:android:8a0e8f48891177bb7ced69',
    messagingSenderId: '823054365132',
    projectId: 'alsharqapp-f9ada',
    storageBucket: 'alsharqapp-f9ada.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANEQWjoH0qOfcX44Etx1bHzdKFm3gFnDM',
    appId: '1:823054365132:ios:c981c383f1dcd2d87ced69',
    messagingSenderId: '823054365132',
    projectId: 'alsharqapp-f9ada',
    storageBucket: 'alsharqapp-f9ada.appspot.com',
    iosBundleId: 'com.example.alsharqapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyANEQWjoH0qOfcX44Etx1bHzdKFm3gFnDM',
    appId: '1:823054365132:ios:6696315bc11305f87ced69',
    messagingSenderId: '823054365132',
    projectId: 'alsharqapp-f9ada',
    storageBucket: 'alsharqapp-f9ada.appspot.com',
    iosBundleId: 'com.example.alsharqapp.RunnerTests',
  );
}