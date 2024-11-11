import 'package:flutter/material.dart';

class CustomSnackBar {
  static showCustomSnackbar(
      {required String message, required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color.fromRGBO(103, 89, 255, 1),
      ),
    );
  }
}