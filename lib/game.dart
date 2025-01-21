import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/enums.dart';
import 'package:rock_paper_scissors/screens/main.dart';
import 'package:rock_paper_scissors/screens/result.dart';
import 'package:rock_paper_scissors/widgets/screen_container.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({super.key});

  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  Random random = Random();

  Move? userMove;
  Move? opponentMove;
  Result? result;

  makeMove(Move choice) {
    setState(() {
      userMove = choice;
      makeMoveForOpponent();
      checkIfUserHasWon();
    });
  }

  void makeMoveForOpponent() {
    opponentMove = Move.values[random.nextInt(3)];
  }

  void checkIfUserHasWon() {
    if (userMove == opponentMove) {
      result = Result.drawn;
      return;
    }

    if (userMove == Move.rock) {
      switch (opponentMove) {
        case Move.scissors:
          result = Result.userVictory;
        case Move.paper:
          result = Result.opponentVictory;
        case _:
      }
    } else if (userMove == Move.scissors) {
      switch (opponentMove) {
        case Move.paper:
          result = Result.userVictory;
        case Move.rock:
          result = Result.opponentVictory;
        case _:
      }
    } else {
      switch (opponentMove) {
        case Move.scissors:
          result = Result.opponentVictory;
        case Move.rock:
          result = Result.userVictory;
        case _:
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = MainScreen(
      onUserChoice: makeMove,
    );

    if (result != null) {
      screen = ResultScreen(
        victory: result!,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: ScreenContainer(
          widget: screen,
        ),
      ),
    );
  }
}
