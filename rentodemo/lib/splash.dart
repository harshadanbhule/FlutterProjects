import 'package:flutter/material.dart';
import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:rentodemo/next.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    
    super.initState();
    Timer(const Duration(seconds: 8), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const Next())
      
    );}
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.6, 0.7, 0.8, 0.9, 1.0],
            colors: [
              Color(0xFF090808),
              Color(0xFF101010),
              Color(0xFF151414),
              Color(0xFF1C1B1B),
              Color(0xFF201F1F),
              Color(0xFF282727),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 138,
            ),
            const Text(
              "Rento",
              style: TextStyle(
                fontFamily: "GameOfThrone",
                color: Colors.white,
                fontSize: 64,
              ),
            ),
            const SizedBox(
              height:5,
            ),
            Text(
              "Rental Bicycle",
              style: GoogleFonts.jost(
                fontSize: 24,
                color: const Color.fromRGBO(222, 19, 19, 0.9),
              ),
            ),
            const SizedBox(
              height:30,
            ),
            Image.asset("assets/images/pngegg(1) 2.png")
          ],
        ),
      ),
    );
  }
}
