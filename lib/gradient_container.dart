import 'package:dice_roller_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.green({super.key}) 
        : color1 = const Color.fromARGB(255, 255, 255, 255), 
          color2 = const Color.fromARGB(255, 255, 254, 176);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: startAlignment,
            end: endAlignment,
            colors: [color1, color2]
          ),
        ),
        child: const Center(
          child: DiceRoller()
        ),
      );
    }
  }


