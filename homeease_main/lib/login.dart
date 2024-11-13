import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:homeease_main/MainScreen.dart';

import 'package:homeease_main/homepage.dart';
import 'package:homeease_main/register.dart';
import 'package:homeease_main/widget/custom_checkbox.dart';
import 'package:homeease_main/widget/snackbar.dart';




class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  bool isVisible = true;
  bool isCheckBox=false;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.arrow_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body:Center(
        child: Form(
          child: Column(
            children: [
              const SizedBox(
                height: 44,
              ),
              Text(
                "Login here",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: const Color.fromRGBO(103, 89, 255, 1),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Welcome back you’ve \nbeen missed!",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 64,
                width: 357,
                child: TextFormField(
                  controller:  _emailTextEditingController,
                  cursorColor: const Color.fromRGBO(103, 89, 255, 1),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(241, 244, 255, 1),
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(103, 89, 255, 1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  validator: (value) {
                    //  print("IN USERNAME VALIDATOR");
                    if (value == null || value.isEmpty) {
                      return "Please enter Email";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 64,
                width: 357,
                child: TextFormField(
                  
                  controller: _passwordTextEditingController,
                  
                          obscureText: isVisible,
                  //key: passwordKey,
                  decoration: InputDecoration(
                    
                    filled: true,
                    fillColor: const Color.fromRGBO(241, 244, 255, 1),
                    hintText: "Password",
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Color.fromRGBO(103, 89, 255, 1),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    suffixIcon: IconButton(
        icon: Icon(
          isVisible ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            isVisible = !isVisible; // Toggle password visibility
          });
        },
                    )           
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  CustomCheckbox(
                            value: isCheckBox,
                            onChanged: (val) {
                              setState(() {
                                isCheckBox = !isCheckBox;
                              });
                            },
                          ),
                          const Spacer(),
                  Text(
                    "Forgot your password?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color.fromRGBO(103, 89, 255, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                width: 357,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shadowColor: const Color.fromRGBO(203, 214, 255, 1),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color.fromRGBO(103, 89, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () async {
                        if (_emailTextEditingController.text
                                .trim()
                                .isNotEmpty &&
                            _passwordTextEditingController.text
                                .trim()
                                .isNotEmpty) {
                          try {
                            UserCredential userCredential =
                                await _firebaseAuth.signInWithEmailAndPassword(
                                    email: _emailTextEditingController.text,
                                    password:
                                        _passwordTextEditingController.text);
                            log(userCredential.user!.email!);
                            _emailTextEditingController.clear();
                            _passwordTextEditingController.clear();

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainScreen(),
                              ),
                            );
                          } on FirebaseAuthException catch (error) {
                            log("B2B: error code: ${error.code}");
                            log("B2B: error message: ${error.message}");
                            CustomSnackBar.showCustomSnackbar(
                              message: error.code,
                              // ignore: use_build_context_synchronously
                              context: context,
                            );
                          }
                        }
                      },
                  
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                },
                child: Text(
                  "Create new account",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromRGBO(73, 73, 73, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                "Or continue with",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: const Color.fromRGBO(103, 89, 255, 1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      print('Container tapped!');
                    },
                    child: Container(
                      width: 60,
                      height: 44,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(236, 236, 236, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/images/login/google.svg"
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                width: 15,
              ),
                  GestureDetector(
                    onTap: () {
                      print('Container tapped!');
                    },
                    child: Container(
                      width: 60,
                      height: 44,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(236, 236, 236, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/images/login/facebook.svg"
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                width: 15,
              ),
                  GestureDetector(
                    onTap: () {
                      print('Container tapped!');
                    },
                    child: Container(
                      width: 60,
                      height: 44,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(236, 236, 236, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: SvgPicture.asset(
                          "assets/images/login/apple.svg"
                        ),
                      ),
                    ),
                  ),
                  const Spacer()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
