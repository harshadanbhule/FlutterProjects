import 'package:flutter/material.dart';
import 'package:todoapp/task.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  get userNameTextEditingController => null;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void login() {
    String username = userNameTextEditingController.text;
    String password = passwordTextEditingController.text;

    if (username == 'abc' && password == '123') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ToDoApp()),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Error"),
            content: const Text("Invalid username or password."),
            actions: <Widget>[
              TextButton(
                child: const Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
 @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20), 
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                
                child: Image.asset(
                  "assets/images/Hello.png"
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Welcome To TO-DO App",
              style: GoogleFonts.roboto(
                color: const Color.fromARGB(255, 69, 81, 83),
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 400,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 139, 148, 1),
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      width: 340,
                      height: 80,
                      child: TextFormField(
                        controller: userNameTextEditingController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter username",
                          //labelText: "Enter username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.black), 
                          ),
                          prefixIcon: const Icon(Icons.person),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter username";
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
                      width: 340,
                      height: 80,
                      child: TextFormField(
                        controller: passwordTextEditingController,
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.black), 
                          ),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: const Icon(Icons.visibility_off_outlined),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter password";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                  onPressed: login,
                  child: Text("Login",
                  style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                  ),
                )
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
}