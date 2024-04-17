import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SharedData extends InheritedWidget {
  int loginId;
  String username;
  String email;
  List<String> skills;
  SharedData(
      {super.key,
      required this.loginId,
      required this.email,
      required this.username,
      required this.skills,
      required super.child});

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return loginId != oldWidget.loginId;
  }
}
