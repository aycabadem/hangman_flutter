import 'package:flutter/material.dart';
import 'package:hangman_flutter/widgets/home_body_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: HomeBodyWidget(),
    );
  }
}
