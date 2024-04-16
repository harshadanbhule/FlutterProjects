import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});
  @override
  State createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ]
      ),
      drawer: Drawer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text("Expense manager"),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
          ],
        ),
      ),
      
    );
  }
}