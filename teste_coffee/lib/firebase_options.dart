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
    apiKey: 'AIzaSyDK7Qpr7aO8ySkpT3JVDb2ILgfrWpFYQ3w',
    appId: '1:893131665240:web:30cefc1b43d160a9a13f2d',
    messagingSenderId: '893131665240',
    projectId: 'app-coffe-dc671',
    authDomain: 'app-coffe-dc671.firebaseapp.com',
    storageBucket: 'app-coffe-dc671.appspot.com',
    measurementId: 'G-C8VXQ1S7GH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCa-kb0wKSm36ZHMFCjUs5DmRS97v7YsQM',
    appId: '1:893131665240:android:12c3c50b0cb66ebfa13f2d',
    messagingSenderId: '893131665240',
    projectId: 'app-coffe-dc671',
    storageBucket: 'app-coffe-dc671.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxC3KiQ9NL0oxUPanjXjTbrrU9iWYgLgI',
    appId: '1:893131665240:ios:310b3cfe796aaf76a13f2d',
    messagingSenderId: '893131665240',
    projectId: 'app-coffe-dc671',
    storageBucket: 'app-coffe-dc671.appspot.com',
    iosBundleId: 'com.example.appCoffee',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxC3KiQ9NL0oxUPanjXjTbrrU9iWYgLgI',
    appId: '1:893131665240:ios:310b3cfe796aaf76a13f2d',
    messagingSenderId: '893131665240',
    projectId: 'app-coffe-dc671',
    storageBucket: 'app-coffe-dc671.appspot.com',
    iosBundleId: 'com.example.appCoffee',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDK7Qpr7aO8ySkpT3JVDb2ILgfrWpFYQ3w',
    appId: '1:893131665240:web:90d73ff319f06334a13f2d',
    messagingSenderId: '893131665240',
    projectId: 'app-coffe-dc671',
    authDomain: 'app-coffe-dc671.firebaseapp.com',
    storageBucket: 'app-coffe-dc671.appspot.com',
    measurementId: 'G-4V9TG317LF',
  );
}
