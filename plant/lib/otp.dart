import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant/home.dart';


class Otp extends StatefulWidget {
  const Otp ({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController otpController=TextEditingController();

  final GlobalKey<FormState> _otpKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Form(
        key: _otpKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: const Icon(CupertinoIcons.arrow_left,
                    //size: 16,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset("assets/svg/fourth.svg")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                      "Verification",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  Text(
                      "Enter the OTP code from the phone we \njust sent you.",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 0.6)),
                    ),  
                    const SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                              SizedBox(
                                      height: 56,
                                      width: 56,
                                      child: TextFormField(
                                        controller: otpController,
                                        cursorColor: const Color.fromRGBO(124, 180, 70, 1),
                                        decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(255, 255, 255, 1),
                                         
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(124, 180, 70, 1)
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(204, 211, 196, 1)
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )
                      
                                        ),
                                      ),
                                    ),
                                     SizedBox(
                                      height: 56,
                                      width: 56,
                                      child: TextFormField(
                                        controller: otpController,
                                        cursorColor: const Color.fromRGBO(124, 180, 70, 1),
                                        decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(255, 255, 255, 1),
                                         
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(124, 180, 70, 1)
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(204, 211, 196, 1)
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )
                      
                                        ),
                                      ),
                                    ),
                                     SizedBox(
                                      height: 56,
                                      width: 56,
                                      child: TextFormField(
                                        controller: otpController,
                                        cursorColor: const Color.fromRGBO(124, 180, 70, 1),
                                        decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(255, 255, 255, 1),
                                         
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(124, 180, 70, 1)
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(204, 211, 196, 1)
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )
                      
                                        ),
                                      ),
                                    ),
                                     SizedBox(
                                      height: 56,
                                      width: 56,
                                      child: TextFormField(
                                        controller: otpController,
                                        cursorColor: const Color.fromRGBO(124, 180, 70, 1),
                                        decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(255, 255, 255, 1),
                                         
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(124, 180, 70, 1)
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(204, 211, 196, 1)
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )
                      
                                        ),
                                      ),
                                    ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Text(
                      "Don’t receive OTP code!",
                      style: GoogleFonts.poppins(
                          fontSize:14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 0.6)),
                    ),
                    Text(
                      " Resend",
                      style: GoogleFonts.poppins(
                          fontSize:14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                       padding: const EdgeInsets.only(right: 20,),
                      child: Container(
                                      //width: 320,
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
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: Row(
                        children: [
                          const Spacer(),
                          Text(
                            "Submit",
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
            ],
          ),
        ),
      ),
    );
  }
}
