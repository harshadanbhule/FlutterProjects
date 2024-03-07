import 'dart:async';
import 'package:basic_quizapp/quizapp2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Splash());
}
class Splash extends StatefulWidget {
  const Splash({super.key});
  

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
//init state i used to use timer and replace the screen on stack at the 
//place of splash screen(for replace splash screen navigator.pushReplacement is used )
  @override
  void initState() {
    
    super.initState();
    Timer(const Duration(seconds: 3), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const QuizApp())
      
    );}
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF222831),
        child: const Center(
          child: Text("Quiz App",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: "Darlington",
            
          ),
          ),
        ),
      ),
    );
  }
}
