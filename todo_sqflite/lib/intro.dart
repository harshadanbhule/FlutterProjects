import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';
import 'package:todo_sqflite/enter.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _SplashState();
}

class _SplashState extends State<Intro> {
  @override
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
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color.fromARGB(228, 255, 255, 255),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Make yourself \nmore on time",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: const Color.fromARGB(228, 255, 255, 255),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Enter()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  shadowColor: const Color.fromRGBO(203, 214, 255, 1),
                  foregroundColor: const Color.fromRGBO(89, 57, 241, 1),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "START",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: const Color.fromRGBO(89, 57, 241, 1),
                  ),
                ),
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
