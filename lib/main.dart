import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.cyan,
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
  int leftButtonNumber = 1;
  int rightButtonNumber = 1;

  void changeNumber() {
    setState(() {
      leftButtonNumber = Random().nextInt(6) + 1;
      rightButtonNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$leftButtonNumber.png'),
                  onPressed: () {
                    changeNumber();
                  },
                ),
              ),
              Expanded(
                child: RaisedButton(
                  elevation: 10,
                  color: Colors.deepPurple,
                  onPressed: () {
                    changeNumber();
                  },
                  child: Image.asset('images/dice$rightButtonNumber.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Made By Yash With Flutter',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
