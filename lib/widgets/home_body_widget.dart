import 'package:flutter/material.dart';
import 'package:hangman_flutter/pages/game_page.dart';

class HomeBodyWidget extends StatefulWidget {
  HomeBodyWidget({Key key}) : super(key: key);

  @override
  State<HomeBodyWidget> createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/images/10.png'),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GamePage()),
                );
              },
              child: Container(
                width: 150,
                height: 50,
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Play',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF0B6419),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 150,
                height: 50,
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Scor Board',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF0B6419),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
