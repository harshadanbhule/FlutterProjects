import 'package:flutter/material.dart';
import 'package:plant/enter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Enter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
