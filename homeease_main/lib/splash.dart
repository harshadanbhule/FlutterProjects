import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:homeease_main/onboarding_screen.dart';


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
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const OnBoardingScreen())
      
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
        color: const Color.fromRGBO(103, 89, 255, 1),
        child: Column(
          children: [
           
           const Spacer(),
            SvgPicture.asset("assets/images/login/logo.svg"),
            const Spacer()

          ],
        ),
      ),
    );
  }
}
