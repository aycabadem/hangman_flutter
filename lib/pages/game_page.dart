import 'package:flutter/material.dart';
import 'package:hangman_flutter/widgets/alphabet_wigdet.dart';

class GamePage extends StatefulWidget {
  GamePage({Key key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text('Hangman'),
        ),
        backgroundColor: Color(0xFF0B6419),
       
      ),
      body: Container(
        color: Color(0xFF8a8888),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/6.png'),
            AlphabetWidget(),
          ],
        ),
      ),
    );
  }
 
}