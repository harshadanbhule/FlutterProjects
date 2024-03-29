import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentodemo/enter.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BE",
                  style: GoogleFonts.barlowCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 56,
                    color: const Color.fromARGB(228, 255, 255, 255),
                    letterSpacing: 5.0,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "UNIQUE",
                  style: GoogleFonts.barlowCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 56,
                    color: const Color.fromRGBO(222, 19, 19, 0.9),
                    letterSpacing: 5.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "RIDE",
                  style: GoogleFonts.barlowCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 56,
                    color: const Color.fromRGBO(222, 19, 19, 0.9),
                    letterSpacing: 5.0,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "WITH",
                  style: GoogleFonts.barlowCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 56,
                    color: const Color.fromARGB(228, 255, 255, 255),
                    letterSpacing: 5.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "STYLE",
                  style: GoogleFonts.barlowCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 56,
                    color: const Color.fromARGB(228, 255, 255, 255),
                    letterSpacing: 5.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Image.asset("assets/images/Rectangle 51.png"),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              width: 102,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Enter()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(0, 88, 57, 241),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Text(
                  "Next",
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: const Color.fromARGB(228, 255, 255, 255),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
