import 'package:flutter/material.dart';
import 'package:stating_from_scratch/style_text.dart';

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({key}) : super(key: key);
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
        child: StyleText(),
      ),
    );
  }
}
