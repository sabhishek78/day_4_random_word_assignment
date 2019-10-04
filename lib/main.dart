import 'dart:math';
import 'words.dart';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RandomPasswords'),
        ),
        body:
        PasswordGenerator(), // Should be PasswordGenerator()
      ),
    ),
  );
}

List words = Words.list; // you are given list of words

// Create a stateful widget called `PasswordGenerator` here
class PasswordGenerator extends StatefulWidget {
  @override
  _PasswordGeneratorState createState() => _PasswordGeneratorState();
}


class _PasswordGeneratorState extends State<PasswordGenerator> {


  String generatePassword() {

    int n = words.length;
    int index;
    Random rand = Random();
    setState(() {
      index=rand.nextInt(n - 1);
    });
    return words[index];
  }


  @override
  Widget build(BuildContext context) {
    String word1, word2, word3;

      word1 = generatePassword();
      word2 = generatePassword();
      word3 = generatePassword();


    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Random Passwords'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              FlatButton(
                color: Colors.blue,
                child:
                Text('New Password'),

                onPressed:
                generatePassword,


              ),
              Text('$word1 $word2 $word3')
            ]
        ));
  }

}
/*
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: DicePage(),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;
  Random rand = new Random();

  void modifyLeftDiceNumber() {
    print('Left Dice clicked');
    setState(() {
      leftDiceNumber = rand.nextInt(6) + 1;
      rightDiceNumber = rand.nextInt(6) + 1;
    });
  }

  void modifyRightDiceNumber() {
    print('Right Dice clicked');
    setState(() {
      leftDiceNumber = rand.nextInt(6) + 1;
      rightDiceNumber = rand.nextInt(6) + 1;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Roll the Dice'),
          backgroundColor: Colors.red,
        ),
        body: Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image(
                  image: AssetImage('assets/dice$leftDiceNumber.png'),

                ),
                onPressed:
                modifyLeftDiceNumber,

              ),

            ),
            Expanded(
              child: FlatButton(
                child: Image(
                  image: AssetImage('assets/dice$rightDiceNumber.png'),

                ),
                onPressed: modifyRightDiceNumber,
              ),
            ),
          ],
        )

    );
  }
}

*/