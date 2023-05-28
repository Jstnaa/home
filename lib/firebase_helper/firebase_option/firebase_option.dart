import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get PlatformOptions {
    if (Platform.isIOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:615216659452:ios:6fb86d7424f26c08a21079',
        apiKey: 'AIzaSyBKJyNSZ2S90WhoX2ynXPRDwNX6rubUhJs',
        projectId: 'cjf-computer-shot',
        messagingSenderId: '615216659452',
        iosBundleId: 'com.example.eCommerce',
      );
    } else {
      // Android
       return const FirebaseOptions(
        appId: '1:615216659452:android:18ff24dc2ada5783a21079',
        apiKey: 'AIzaSyDURK4H_vm_qf50aJrckaGuGdaQTmxNAc8',
        projectId: 'cjf-computer-shot',
        messagingSenderId: '615216659452',
       );
    }
  }
}