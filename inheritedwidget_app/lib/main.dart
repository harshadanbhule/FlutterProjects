import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'skills_addition.dart';
import 'shared_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedData(
        loginId: 3105,
        username: "Harshad",
        email: "harshad@gmail.com",
        skills: [],
        child: const MyApp1());
  }
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  TextEditingController loginId = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SharedData sharedData = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Example"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 176, 30),
      ),
      
    body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 35, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20,top:30),
                    child: Text(
                      "Login ",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 10),
                    height: 50,
                    width: 320,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: username,
                      decoration: InputDecoration(
                        hintText: "User Name",
                        hintStyle: GoogleFonts.poppins(
                          color: const Color.fromRGBO(0, 0, 0, 0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 82, 82, 80),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: const Color.fromARGB(255, 255, 176, 30),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 10),
                    height: 50,
                    width: 320,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: email,
                      decoration: InputDecoration(
                        hintText: "Employee mail",
                        hintStyle: GoogleFonts.poppins(
                          color: const Color.fromRGBO(0, 0, 0, 0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 82, 82, 80),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: const Color.fromARGB(255, 255, 176, 30),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 10),
                    height: 50,
                    width: 320,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: loginId,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Employee Id",
                       
                        hintStyle: GoogleFonts.poppins(
                          color: const Color.fromRGBO(0, 0, 0, 0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 82, 82, 80),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: const Color.fromARGB(255, 255, 176, 30),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        )
                      ),
                    ),
                  ),
                  
                  GestureDetector(
                    onTap: () {
              if (loginId.text.isNotEmpty &&
                  username.text.isNotEmpty &&
                  email.text.isNotEmpty) {
                sharedData.email = email.text;
                sharedData.username = username.text;
                sharedData.loginId = int.parse(loginId.text);
              }
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Skills()));
            },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20, top: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromARGB(255, 255, 176, 30),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 5,
                            spreadRadius: 2,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      height: 50,
                      width: 320,
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Dont have an account?  ",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 255, 176, 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
    );
  }
}
