import 'package:flutter/material.dart';
import 'package:snapsynchub/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});


  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 35, 1, 69),
          Color.fromARGB(255, 78, 15, 123)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: const Center(
            child: DiceRoller()
      )
    );
  }
}
