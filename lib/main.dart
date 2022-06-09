import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceeApp());
}

class DiceeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              'Dice Project',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ),
        body: DiceImage(),
      ),
    );
  }
}

class DiceImage extends StatefulWidget {
  const DiceImage({Key? key}) : super(key: key);

  @override
  State<DiceImage> createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {
  var leftDiceButton = 5;
  var rightDiceButton = 2;
  void numberGenerator() {
    print("object");
    rightDiceButton = Random().nextInt(6) + 1;
    leftDiceButton = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  numberGenerator();
                });
              },
              child: Image.asset("images/dice$leftDiceButton.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  numberGenerator();
                });
              },
              child: Image.asset("images/dice$rightDiceButton.png"),
            ),
          )
        ],
      ),
    );
  }
}
