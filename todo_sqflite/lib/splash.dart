import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';


import 'package:google_fonts/google_fonts.dart';
import 'package:todo_sqflite/enter.dart';
import 'package:todo_sqflite/intro.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    
    super.initState();
    Timer(const Duration(seconds: 5), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const Intro())
      
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
          color: Color.fromRGBO(89, 57, 241, 1),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/images/Union.svg"),
              ],
            ),
            const Spacer(),
            Text(
              "on.time",
             style: GoogleFonts.poppins(
              fontWeight:FontWeight.bold,
                fontSize: 50,
                color: Color.fromARGB(228, 255, 255, 255),
              ),
            ),
            const Spacer(),
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
               SvgPicture.asset("assets/images/Union2.svg"),
             ],
           )
          ],
        ),
      ),
    );
  }
}
