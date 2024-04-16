import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant/login.dart';

class Enter extends StatefulWidget {
  const Enter({super.key});

  @override
  State<Enter> createState() => _EnterState();
}

class _EnterState extends State<Enter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 44,
            ),
            Image.asset("assets/png/first.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 56.56,
                ),
                Text(
                  "Enjoy your ",
                  style: GoogleFonts.poppins(
                      fontSize: 34.22,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            Row(
              children: [
                 const SizedBox(
                  width: 56.56,
                ),
                Text(
                  "life with ",
                  style: GoogleFonts.poppins(
                      fontSize: 34.22,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Text(
                  "Plants",
                  style: GoogleFonts.poppins(
                      fontSize: 34.22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                const Spacer()
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 93, right: 15, left: 15, bottom: 92),
              child: Container(
               // width: 320,
                height: 50,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      offset: Offset(0, 20),
                      blurRadius: 40,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.5, 1.0],
                    colors: [
                      Color.fromRGBO(124, 180, 70, 1),
                      Color.fromRGBO(62, 102, 24, 1),
                    ],
                  ),
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                        shadowColor: Colors.transparent),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Row(
                      children: [
                        const Spacer(),
                        Text(
                          "Get Started",
                          style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        const Icon(
                          CupertinoIcons.forward,
                          color: Colors.white,
                        ),
                        const Spacer()
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
