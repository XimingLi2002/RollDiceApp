import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() =>
        //Al poner el Random() aquí lo que sucede es que se recrea el objeto cada vez que se ejecuta por lo que es mejor instanciarlo fuera
        currentDiceRoll = randomizer.nextInt(6) + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const StyledText('Roll Dice'),
        )
      ],
    );
  }
}
