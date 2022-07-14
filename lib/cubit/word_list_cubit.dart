import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';



class WordListCubit extends Cubit<List<String>> {
  WordListCubit() : super([]);
    void loadAsset() async {
    String loadedString =
        await rootBundle.loadString('assets/texts/hangman_words.txt');
      emit(loadedString.split('\n')); 
   
  
  }
}
