import 'package:flutter/material.dart';

// ShareData class

class ShareData extends InheritedWidget {
  final int data;

  const ShareData({super.key, required this.data, required super.child});

  static ShareData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareData>()!;
  }

  @override
  bool updateShouldNotify(ShareData oldWidget) {
    return data != oldWidget.data;
  }
}

class InheritedAssign extends StatefulWidget {
  const InheritedAssign({super.key});
  @override
  State createState() => _InheritedState();
}

class _InheritedState extends State {
  @override
  Widget build(BuildContext context) {
    ShareData shareDataobj = ShareData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Example"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                
              },
              child: Image.asset(""),
            ),
              GestureDetector(
              onTap: () {
                
              },
              child: Image.asset(""),
            ),
          ],
        ),
      ),
    );
  }
}

class AccessWidget extends StatelessWidget {
  const AccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ShareData shareDataobj = ShareData.of(context);

    return Text("${shareDataobj.data}");
  }
}