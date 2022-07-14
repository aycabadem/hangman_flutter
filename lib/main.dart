import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hangman_flutter/cubit/word_list_cubit.dart';
import 'package:hangman_flutter/pages/game_page.dart';
import 'package:hangman_flutter/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WordListCubit>(
          create: (BuildContext context) => WordListCubit()..loadAsset(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // theme: ThemeData(

          //   primarySwatch: Colors.blue,
          // ),
          home: MyHomePage()),
    );
  }
}
