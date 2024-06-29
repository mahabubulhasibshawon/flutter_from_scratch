import 'package:flutter/material.dart';
import 'package:stating_from_scratch/gradiant_container.dart';
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