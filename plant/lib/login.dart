import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant/otp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phonenumController=TextEditingController();

  final GlobalKey<FormState> _loginKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Form(
        key: _loginKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/svg/second.svg"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Log in",
              style: GoogleFonts.poppins(
                fontWeight:FontWeight.w600,
                fontSize:30,
                color:Colors.black
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 40,
                left: 20,
                right: 20
              ),
              child: SizedBox(
                height: 50,
                //width: 320,
                child: TextFormField(
                  controller: phonenumController,
                  cursorColor: const Color.fromRGBO(124, 180, 70, 1),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    prefixIcon: const Icon(CupertinoIcons.phone,
                    weight: 13,
                    color:Color.fromRGBO(164, 164, 164, 1),
                    ),
                    hintText: "Mobile Number",
                    hintStyle: GoogleFonts.inter(
                      fontWeight:FontWeight.w400,
                      fontSize:13,
                      color:const Color.fromRGBO(164, 164, 164, 1),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Color.fromRGBO(124, 180, 70, 1)
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(204, 211, 196, 1)
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )
                    
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 20, bottom: 60),
              child: Container(
                
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
                        MaterialPageRoute(builder: (context) => const Otp()),
                      );
                    },
                    child: Row(
                      children: [
                        const Spacer(),
                        Text(
                          "Login",
                          style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        
                        const Spacer()
                      ],
                    )),
              ),
            ),
            Image.asset("assets/png/third.png")
          ],
        ),
      ),
    );
  }
}