import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hangman_flutter/cubit/word_list_cubit.dart';
import 'package:hangman_flutter/widgets/home_body_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WordListCubit>(context).loadAsset();
  }
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
