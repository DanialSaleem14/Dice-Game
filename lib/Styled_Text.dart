import 'package:flutter/material.dart';

class Styled_Text extends StatelessWidget {
  const Styled_Text({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Styled Text',
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
