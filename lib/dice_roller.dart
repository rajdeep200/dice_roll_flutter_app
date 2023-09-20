import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 6;

  void rollDice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice$activeDiceImage.png',
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            child: Container(
              color: Colors.amber.shade600,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              margin: const EdgeInsets.only(top: 25),
              child: const Text(
                "Roll Dice",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ))
      ],
    );
  }
}
