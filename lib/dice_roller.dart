import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage1 = 'assets/dice-6.png';
  var activeDiceImage2 = 'assets/dice-6.png';

  void rollDice() {
    var diceRoll1 = Random().nextInt(6) + 1;
    var diceRoll2 = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage1 = 'assets/dice-$diceRoll1.png';
      activeDiceImage2 = 'assets/dice-$diceRoll2.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(
          activeDiceImage1,
          width: 200,
        )),
        Padding(
          padding: EdgeInsets.all(25),
          child: ElevatedButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 28)),
              child: Text('Roll Dice')),
        ),
        Center(
            child: Image.asset(
          activeDiceImage2,
          width: 200,
        )),
      ],
    );
  }
}
