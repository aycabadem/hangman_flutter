class WordListRepository{
    List<String> _words = [];

  List<String> get words => _words;

  set words(List<String> words) {
    _words = words;
  }

  String _selectedWord;

  String get selectedWord => _selectedWord;

  set selectedWord(String selectedWord) {
    _selectedWord = selectedWord;
  }

}