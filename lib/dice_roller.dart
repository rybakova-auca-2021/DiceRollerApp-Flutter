import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column (
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(activeDiceImage, width: 300, height: 300),
              const SizedBox(height: 80),
              TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.yellow,
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ), 
                child: const Text('Roll dice')),
            ],
          );
  }

}