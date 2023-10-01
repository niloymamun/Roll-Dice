import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 134, 4, 127),
      appBar: AppBar(
        title: const Text(
            style: TextStyle(
                fontSize: 28, color: Colors.white, fontStyle: FontStyle.italic),
            'Home Page'),
      ),
      body: const GradientContainer(
        color1: Color.fromARGB(255, 140, 0, 255),
        color2: Color.fromARGB(66, 109, 60, 201),
      ),
    );
  }
}
