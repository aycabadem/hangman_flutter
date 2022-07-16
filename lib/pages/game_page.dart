import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:hangman_flutter/cubit/word_list_cubit.dart';

import 'package:hangman_flutter/repositories/word_list_repository.dart';

import 'package:hangman_flutter/widgets/alphabet_widget.dart';

class GamePage extends StatefulWidget {
  GamePage({Key key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  GetIt getIt = GetIt.instance;
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
            Image.asset('assets/images/6.png'),
            AlphabetWidget(),
            // BlocBuilder<WordListCubit,bool>(
            //   builder: (context, state) {

            //     return state?Text(getIt<WordListRepository>().words[0]):CircularProgressIndicator();
            //   },
            // ),
            Text(getIt<WordListRepository>().words[0]),
            
          ],
        ),
      ),
    );
  }
}
