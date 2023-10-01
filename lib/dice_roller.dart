import 'dart:math';

import 'package:flutter/material.dart';

import 'styling_text.dart';

final randomNumber = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  var activeImage = 'assets/images/dice-1.png';
  void roller() {
    setState(
      () {
        currentDiceRoll = randomNumber.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
          ),
          onPressed: roller,
          child: const StylingText(
            nameText: 'Roll Dice',
          ),
        ),
      ],
    );
  }
}
