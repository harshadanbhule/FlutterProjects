
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:homeease_main/login.dart';
import 'package:homeease_main/splash.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDYmtaemFxjwSsE7i5FYQFJb1BpSiTWcsk',
      appId: '1:19997755506:android:020aecaa8721b282031aeb',
      messagingSenderId: '19997755506',
      projectId: 'homeease-d3b8d',
    ),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}