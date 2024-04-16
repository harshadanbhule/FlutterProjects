import 'dart:async';

import 'package:expense_manager/registerScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Register()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      resizeToAvoidBottomInset: false,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 329,
              ),
              Container(
                height: 144,
                width: 144,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(234, 238, 235, 1)),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/svg/Group 77.svg",
                    height: 58.82,
                  width: 69.76,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                "Expense Manager",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 115,
              )
            ],
          ),
        ],
      ),
    );
  }
}
