import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import 'package:todo_sqflite/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController usenameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ipasswordController = TextEditingController();

  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();

  bool isPassVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _loginKey,
            child: Column(
              children: [
                const SizedBox(
                    height: 20,
                  ),
                 Row(
            children: [
              
              IconButton(
                icon: const Icon(CupertinoIcons.arrow_left),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(width: 8), // Adjust spacing as needed
             
            ],
          ),
                const SizedBox(
                  height: 44,
                ),
                Text(
                  "Create Account",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: const Color.fromRGBO(89, 57, 241, 1),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create an account so you can explore all the \navailable cycles",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 64,
                  width: 320,
                  child: TextFormField(
                    controller: usenameController,
                    cursorColor: const Color.fromRGBO(89, 57, 241, 1),
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(241, 244, 255, 1),
                        hintText: "Email",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color.fromRGBO(89, 57, 241, 1),
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
                  width: 320,
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: isPassVisible ? false : true,
                    //key: passwordKey,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(241, 244, 255, 1),
                      hintText: "Password",
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(89, 57, 241, 1),
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
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPassVisible = !isPassVisible;
                          });
                        },
                        child: Icon(
                          size: 20,
                          CupertinoIcons.eye,
                          color: isPassVisible
                              ? const Color.fromRGBO(89, 57, 241, 1)
                              : const Color.fromARGB(255, 134, 134, 134),
                        ),
                      ),
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
                SizedBox(
                  height: 64,
                  width: 320,
                  child: TextFormField(
                    controller: ipasswordController,
                    obscureText: isPassVisible ? false : true,
                    //key: passwordKey,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(241, 244, 255, 1),
                      hintText: "Confirm Password",
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(89, 57, 241, 1),
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
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPassVisible = !isPassVisible;
                          });
                        },
                        child: Icon(
                          size: 20,
                          CupertinoIcons.eye,
                          color: isPassVisible
                              ? const Color.fromRGBO(89, 57, 241, 1)
                              : const Color.fromARGB(255, 134, 134, 134),
                        ),
                      ),
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
                  height: 30,
                ),
                SizedBox(
                  height: 60,
                  width: 320,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: const Color.fromRGBO(203, 214, 255, 1),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Text(
                      "Sign up",
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
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                  },
                  child: Text(
                    "Already have an account",
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
                    color: const Color.fromRGBO(89, 57, 241, 1),
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
                          child:
                              SvgPicture.asset("assets/images/google.svg"),
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
                              "assets/images/facebook.svg"),
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
                          child:
                              SvgPicture.asset("assets/images/apple.svg"),
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
      ),
    );
  }
}
