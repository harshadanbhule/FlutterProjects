
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
   TextEditingController usenameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  


  // ignore: non_constant_identifier_names
  final GlobalKey<FormState> _LoginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    );
  }
}
