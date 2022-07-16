import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:hangman_flutter/repositories/word_list_repository.dart';



class WordListCubit extends Cubit<bool> {
  WordListCubit() : super(false);
    void loadAsset() async {
    String loadedString =
        await rootBundle.loadString('assets/texts/hangman_words.txt');

      GetIt getIt = GetIt.instance;
  
      getIt<WordListRepository>().words=loadedString.split('\n');
      emit(true);
   
  
  }
}
