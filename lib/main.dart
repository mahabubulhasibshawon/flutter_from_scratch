import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 91, 23, 23),
        body: GradiantContainer(),
      ),
    ),
  );
}

class GradiantContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 83, 50, 112),
            Color.fromARGB(255, 177, 131, 217),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
            style: TextStyle(color: Colors.white, fontSize: 24),
            'Hello World!'),
      ),
    );
  }
}