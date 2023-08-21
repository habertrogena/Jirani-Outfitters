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
    apiKey: 'AIzaSyBw0G989OaRhMYTnNnRRFhb-HhdagzkPeU',
    appId: '1:675896022017:web:44759315a7445ed5705c00',
    messagingSenderId: '675896022017',
    projectId: 'jirani-outfitters',
    authDomain: 'jirani-outfitters.firebaseapp.com',
    storageBucket: 'jirani-outfitters.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNv5mAlD7ZD9xtOVuU5KGj-3w832nkDPA',
    appId: '1:675896022017:android:b6fa051a1f98882e705c00',
    messagingSenderId: '675896022017',
    projectId: 'jirani-outfitters',
    storageBucket: 'jirani-outfitters.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLZ8GpjybIwkmkiFMGvOICYKfSLRc41ms',
    appId: '1:675896022017:ios:20999c54a4e8649c705c00',
    messagingSenderId: '675896022017',
    projectId: 'jirani-outfitters',
    storageBucket: 'jirani-outfitters.appspot.com',
    iosClientId: '675896022017-koioiequ7f3hd8osl1h0v0vj8rm8vrqh.apps.googleusercontent.com',
    iosBundleId: 'com.example.jiraniMobileApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDLZ8GpjybIwkmkiFMGvOICYKfSLRc41ms',
    appId: '1:675896022017:ios:20999c54a4e8649c705c00',
    messagingSenderId: '675896022017',
    projectId: 'jirani-outfitters',
    storageBucket: 'jirani-outfitters.appspot.com',
    iosClientId: '675896022017-koioiequ7f3hd8osl1h0v0vj8rm8vrqh.apps.googleusercontent.com',
    iosBundleId: 'com.example.jiraniMobileApp',
  );
}
