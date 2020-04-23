import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade800,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.green.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDieNum = 6;
  int rightDieNum = 6;
  void rollDice() {
    setState(() {
      leftDieNum = Random().nextInt(6) + 1;
      rightDieNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDieNum.png'),
              onPressed: () {
                rollDice();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDieNum.png'),
              onPressed: () {
                rollDice();
                print('Right button was pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
