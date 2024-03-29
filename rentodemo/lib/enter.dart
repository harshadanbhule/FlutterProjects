
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:rentodemo/login.dart';

class Enter extends StatefulWidget {
  const Enter({super.key});

  @override
  State<Enter> createState() => _EnterState();
}

class _EnterState extends State<Enter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 91,
          ),
          Image.asset("assets/images/enter/enter.png"),
          const SizedBox(
            height: 75,
          ),
          Text(
            "Discover Your \n Dream Cycle here",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: const Color.fromRGBO(221, 18, 18, 1),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Rent a bike and explore your city hassle-free \nwith our convenient cycle rental service!",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          Row(
            children: [
              const Spacer(),
              SizedBox(
                width: 160,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shadowColor: const Color.fromRGBO(203, 214, 255, 1),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromRGBO(221, 18, 18, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: const Color.fromARGB(228, 255, 255, 255),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 160,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Enter()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    backgroundColor:const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Register",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      
                    ),
                  ),
                ),
              ),
              const Spacer()
            ],
          )
        ],
      ),
    );
  }
}
