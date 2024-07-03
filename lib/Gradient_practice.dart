import 'package:flutter/material.dart';
import 'package:practice/Styled_Text.dart';
import 'dice_roller.dart';

class GradientPractice extends StatelessWidget {
  const GradientPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green, Colors.yellow],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
