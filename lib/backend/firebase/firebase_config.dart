import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA6GmyU-VYvuW697Pmp91KhXBY928jyjO0",
            authDomain: "apno-ki-awaj-khn7uu.firebaseapp.com",
            projectId: "apno-ki-awaj-khn7uu",
            storageBucket: "apno-ki-awaj-khn7uu.firebasestorage.app",
            messagingSenderId: "570429745595",
            appId: "1:570429745595:web:477337542fe1d95b25bc9e"));
  } else {
    await Firebase.initializeApp();
  }
}
