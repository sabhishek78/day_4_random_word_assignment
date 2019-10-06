import 'dart:math';
import 'words.dart';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:
        PasswordGenerator(), // Should be PasswordGenerator()
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
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('$word1 $word2 $word3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                SizedBox(height: 20,),
                FlatButton(
                  color: Colors.blue,
                  child:
                  Text('New Password'),

                  onPressed:
                  generatePassword,


                )

              ]
          ),
        ));
  }

}
