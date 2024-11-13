import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'homepage.dart';
import 'notification.dart';
import 'message.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // Track the selected index

  final List<Widget> _pages = [
    const Homepage(),   // Home page screen
    const Notify(),     // Notification screen
    const Messageon(),  // Message screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromRGBO(103, 89, 255, 1),
        backgroundColor: Colors.transparent,
        height: 60,
        items: <Widget>[
          Icon(Icons.home, size: 28, color: Colors.white),
          Icon(Icons.notifications, size: 28, color: Colors.white),
          Icon(Icons.message, size: 28, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
