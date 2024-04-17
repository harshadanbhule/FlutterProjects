import 'package:flutter/material.dart';
import 'package:inherited_widget/demo.dart';
import 'package:inherited_widget/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Inherited widget',
      home:AccessWidget(),
      debugShowCheckedModeBanner: false,
    );
    }
}