import 'package:flutter/material.dart';

import 'package:basic/styled_text.dart';
import 'package:basic/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;
  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  @override
  Widget build(context) {
    return (Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
        // StyledText('Yor are welcome Dear!'),
      ),
    ));
  }
}
