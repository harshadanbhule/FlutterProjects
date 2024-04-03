

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_sqflite/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _LoginState();
}

class User {
  final String user;
  final String pass;

  const User({required this.user, required this.pass});
}

class _LoginState extends State<Login> {
  List<User> userList = [
    const User(user: "Harshad", pass: "Harshad123"),
    const User(user: "Pranav", pass: "Pranav123"),
    const User(user: "Aditya", pass: "Aditya123"),
  ];
 
  TextEditingController usenameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();


  bool _loggedin = false;

  
  bool isPassVisible = false;
  void ShowNextPage() {
    if (_loggedin) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Advtodo(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: _loginKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(89, 57, 241, 1),
                    shape: BoxShape.circle,
                    boxShadow:[
                      BoxShadow(
                        color: Color.fromRGBO(89, 57, 241, 1),
                        offset: Offset(6, 6),
                        blurRadius: 40,
                        blurStyle: BlurStyle.normal
                      )
                    ]
                  ),
                  child: Image.asset(
                    "assets/images/_0013.png",
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30
                  ),
                  child: Text(
                      "Login here",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromRGBO(89, 57, 241, 1),
                    ),
                    ),
                ),
               SizedBox(
                height: 64,
                width: 357,
                child: TextFormField(
                  controller: usenameController,
                  cursorColor: const Color.fromRGBO(89, 57, 241, 1),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 212, 221, 253),
                      hintText: "User Name",
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
                      return "Please enter User Name";
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
                  controller: passwordController,
                  obscureText: isPassVisible ? false : true,
                  //key: passwordKey,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 212, 221, 253),
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
                width: 357,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shadowColor: const Color.fromRGBO(203, 214, 255, 1),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                    onPressed: () {
                      bool loginValidated = _loginKey.currentState!.validate();
                      if (loginValidated &&
                          userList.any(
                            (element) =>
                                element.user == usenameController.text &&
                                element.pass == passwordController.text,
                          )) {
                        _loggedin = true;
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Login SuccessFul"),
                          backgroundColor: Colors.green,
                        ));
                        ShowNextPage();
                      } else {
                        _loggedin = false;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Invalid Credentials , Try Again!"),
                              backgroundColor: Colors.red),
                        );
                      }

                     
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                height: 40,
              ),
              Text(
                "Create new account",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: const Color.fromRGBO(73, 73, 73, 1),
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
