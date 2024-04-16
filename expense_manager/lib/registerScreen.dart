
import 'package:expense_manager/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
   TextEditingController usenameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conpasswordController = TextEditingController();


  // ignore: non_constant_identifier_names
  final GlobalKey<FormState> _RegiKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _RegiKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 86,
            ),
            Center(
                child: SizedBox(
                  child: SvgPicture.asset(
                                "assets/svg/Group 77.svg",
                                height: 58.82,
                                width: 69.76,
                              ),
                )),
            const SizedBox(
              height: 60.18,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 41
              ),
              child: Text(
                "Create your Account",
                 style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: Center(
                child: Container(
                  height: 50,
                    
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                      ),
                  child: SizedBox(
                      height: 50,
                     
                      child: TextFormField(
                        controller: nameController,
                        cursorColor: const Color.fromRGBO(0, 0, 0, 0.4),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            hintText: "Name",
                            hintStyle:  GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color:const Color.fromRGBO(0, 0, 0, 0.4),
                        fontSize: 12,
                        ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(14, 161, 125, 1),
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
                            )),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                ),
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: Center(
                child: Container(
                  height: 50,
                    
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                      ),
                  child: SizedBox(
                      height: 50,
                     
                      child: TextFormField(
                        controller: usenameController,
                        cursorColor: const Color.fromRGBO(0, 0, 0, 0.4),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(255, 255, 255, 1),
                            hintText: "Username",
                            hintStyle:  GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color:const Color.fromRGBO(0, 0, 0, 0.4),
                        fontSize: 12,
                        ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(14, 161, 125, 1),
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
                            )),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: Center(
                child: Container(
                  height: 50,
                    
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                      ),
                  child: SizedBox(
                      height: 50,
                     
                      child: TextFormField(
                        controller: passwordController,
                        cursorColor: const Color.fromRGBO(0, 0, 0, 0.4),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(255, 255, 255, 1),
                            hintText: "Password",
                            hintStyle:  GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color:const Color.fromRGBO(0, 0, 0, 0.4),
                        fontSize: 12,
                        ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(14, 161, 125, 1),
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
                            )),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: Center(
                child: Container(
                  height: 50,
                    
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                      ),
                  child: SizedBox(
                      height: 50,
                     
                      child: TextFormField(
                        controller: conpasswordController,
                        cursorColor: const Color.fromRGBO(0, 0, 0, 0.4),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(255, 255, 255, 1),
                            hintText: "Confirm Password",
                            hintStyle:  GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color:const Color.fromRGBO(0, 0, 0, 0.4),
                        fontSize: 12,
                        ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(14, 161, 125, 1),
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
                            )),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
             padding: const EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: SizedBox(
                  height: 50,
                  width: 360,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                  
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Text(
                      "Sign Up ",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
            ),
            const Spacer(),
            Padding(
               padding: const EdgeInsets.only(
                left: 85,
                right: 85
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                },
                child: Row(
                  children: [
                    Text(
                          "Already have an account? ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                        ),
                        Text(
                          "Sign In",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(14, 161, 125, 1),
                          ),
                        ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
