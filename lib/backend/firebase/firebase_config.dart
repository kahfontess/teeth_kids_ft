import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC6sUJyuMGnVamDvdr4OqIOyNRJXpNnVh0",
            authDomain: "teethkids-97abb.firebaseapp.com",
            projectId: "teethkids-97abb",
            storageBucket: "teethkids-97abb.appspot.com",
            messagingSenderId: "599922435044",
            appId: "1:599922435044:web:d398648a91b2cedea81df1",
            measurementId: "G-1HENZLRL1Q"));
  } else {
    await Firebase.initializeApp();
  }
}
