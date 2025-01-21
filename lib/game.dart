import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/enums.dart';
import 'package:rock_paper_scissors/screens/main.dart';
import 'package:rock_paper_scissors/widgets/screen_container.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({super.key});

  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  Move? userChoice;
  Move? opponentMove;

  makeMove(Move choice) {
    setState(() {
      userChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = MainScreen(
      onUserChoice: makeMove,
    );

    return MaterialApp(
      home: Scaffold(
        body: ScreenContainer(
          widget: screen,
        ),
      ),
    );
  }
}
