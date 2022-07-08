import 'package:flutter/material.dart';
import 'package:hangman_flutter/constants/alphabet.dart';

class AlphabetWidget extends StatefulWidget {
  AlphabetWidget({Key key}) : super(key: key);

  @override
  State<AlphabetWidget> createState() => _AlphabetWidgetState();
}

class _AlphabetWidgetState extends State<AlphabetWidget> {
  List<String> alphabetList = Alphabet.alphabet.toUpperCase().split("");

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 10.5,
        children: [
          ..._buildButtonsString(),
        ],
      ),
    );
  }

  List<Widget> _buildButtonsString() {
    List<Widget> widgetList = [];
    for (var item in alphabetList) {
      widgetList.add(Container(
        width: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color(0xFF0B6419),
            ),
          ),
          onPressed: () {},
          child: Text(item),
        ),
      ));
    }
    return widgetList;
  }
}
