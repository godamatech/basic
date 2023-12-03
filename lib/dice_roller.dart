import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;
  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'images/dice-images/dice-$currentDice.png',
          width: 200,
        ),
        const SizedBox(height: 10),
        const Text('Assalamualaikum'),
        const SizedBox(height: 10),
        OutlinedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(15),
            foregroundColor: const Color.fromARGB(255, 226, 222, 0),
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('Roll-Dice'),
        ),
      ],
    );
  }
}

// Image.asset('images/dice-images/dice-1.png'),
// ElevatedButton(onPressed: rollDice, child: Text('Roll-Dice'))