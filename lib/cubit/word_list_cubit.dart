import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:hangman_flutter/repositories/word_list_repository.dart';

class WordListCubit extends Cubit<bool> {
  GetIt getIt = GetIt.instance;

  WordListCubit() : super(false);
  void loadAsset() async {
    final wordListRepository = getIt<WordListRepository>();
    String loadedString =
        await rootBundle.loadString('assets/texts/hangman_words.txt');

    wordListRepository.words = loadedString.split('\n');

    Random random = new Random();
    int randomIndex = random.nextInt(wordListRepository.words.length);

    String randomWord = wordListRepository.words[randomIndex];

    wordListRepository.selectedWord = randomWord;
    emit(true);
  }
}
