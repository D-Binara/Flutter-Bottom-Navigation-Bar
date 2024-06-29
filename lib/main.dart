import 'package:flutter/material.dart';
import 'package:flutter_application/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Navbar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 