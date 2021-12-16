import 'package:cryptoinnovate/ui/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyAUbysNPVkRXt-mN1NvWhjHr6j0ooX_c9o",
      appId: "1:91135346932:android:a966c178c96aab119876a1",
      messagingSenderId: "91135346932",
      projectId: "crypto-innovate-fdc0d",
    ),
  );
  runApp(const App());
}
