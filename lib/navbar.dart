import 'package:flutter/material.dart';
import 'package:flutter_application/ProfilePage.dart';
import 'package:flutter_application/ProfilePage2.dart';
import 'package:flutter_application/home.dart';
import 'package:flutter_application/store.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const StorePage(),
    const ProfilePage(),
    const ProfilePage2(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Group',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        backgroundColor: Colors.white, // Set the background color here
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Ensure type is set correctly
      ),
    );
  }
}
