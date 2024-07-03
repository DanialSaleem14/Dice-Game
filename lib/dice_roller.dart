import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentdiceroll = 2;
  // var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentdiceroll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdiceroll.png',
          width: 200,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: TextButton(
            onPressed: rollDice,
            child: const Text(
              'Dice Roll',
              style: TextStyle(color: Colors.blue, fontSize: 24),
            ),
          ),
        ),
      ],
    );
  }
}
