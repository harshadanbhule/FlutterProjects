import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:rentodemo/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class User {
  final String user;
  final String pass;

  const User({required this.user, required this.pass});
}

class _LoginState extends State<Login> {
  List<User> userList = [
    const User(user: "harshad@gmail.com", pass: "Harshad123"),
    const User(user: "aditya@gmail.com", pass: "Aditya123"),
    const User(user: "pranav@gmail.com", pass: "Pranav123"),
  ];

  TextEditingController usenameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();

  bool _loggedin = false;
  bool isPassVisible = false;

  // ignore: non_constant_identifier_names
  void ShowNextPage() {
    if (_loggedin) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
  }

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
      body: Center(
        child: Form(
          key: _loginKey,
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
                  color: const Color.fromRGBO(221, 18, 18, 1),
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
                  controller: usenameController,
                  cursorColor: const Color.fromRGBO(221, 18, 18, 1),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(241, 244, 255, 1),
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(221, 18, 18, 1),
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
                        color: Color.fromRGBO(221, 18, 18, 1),
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
                            ? const Color.fromRGBO(221, 18, 18, 1)
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot your password?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color.fromRGBO(221, 18, 18, 1),
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
                    backgroundColor: const Color.fromRGBO(221, 18, 18, 1),
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
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
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
                  color: const Color.fromRGBO(221, 18, 18, 1),
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
                            SvgPicture.asset("assets/images/login/google.svg"),
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
                            "assets/images/login/facebook.svg"),
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
                            SvgPicture.asset("assets/images/login/apple.svg"),
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
