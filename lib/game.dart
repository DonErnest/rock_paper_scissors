import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/enums.dart';
import 'package:rock_paper_scissors/screens/main.dart';
import 'package:rock_paper_scissors/screens/result.dart';
import 'package:rock_paper_scissors/screens/stats.dart';
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

  int userVictories = 0;
  int opponentVictories = 0;
  int drawnCount = 0;

  GameState state = GameState.gaming;

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
      drawnCount++;
      return;
    }

    if (userMove == Move.rock) {
      switch (opponentMove) {
        case Move.scissors || Move.lizard:
          result = Result.userVictory;
          userVictories++;
        case Move.paper || Move.spock:
          result = Result.opponentVictory;
          opponentVictories++;
        case _:
      }
    } else if (userMove == Move.scissors) {
      switch (opponentMove) {
        case Move.paper || Move.lizard:
          result = Result.userVictory;
          userVictories++;
        case Move.rock || Move.spock:
          result = Result.opponentVictory;
          opponentVictories++;
        case _:
      }
    } else if (userMove == Move.paper) {
      switch (opponentMove) {
        case Move.rock || Move.spock:
          result = Result.userVictory;
          userVictories++;
        case Move.scissors || Move.lizard:
          result = Result.opponentVictory;
          opponentVictories++;
        case _:
      }
    } else if (userMove == Move.spock) {
      switch (opponentMove) {
        case Move.rock || Move.scissors:
          result = Result.userVictory;
          userVictories++;
        case Move.lizard || Move.paper:
          result = Result.opponentVictory;
          opponentVictories++;
        case _:
      }
    } else {
      switch (opponentMove) {
        case Move.spock || Move.paper:
          result = Result.userVictory;
          userVictories++;
        case Move.scissors || Move.rock:
          result = Result.opponentVictory;
          opponentVictories++;
        case _:
      }
    }
  }

  void retryGame() {
    setState(() {
      userMove = null;
      opponentMove = null;
      result = null;
      state = GameState.gaming;
    });
  }

  void browseStats() {
    setState(() {
      state = GameState.browsingStats;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = MainScreen(
      onUserChoice: makeMove,
    );
    if (state == GameState.browsingStats) {
      screen = StatsScreen(
        userVictoryCounter: userVictories,
        opponentVictoryCounter: opponentVictories,
        drawnCounter: drawnCount,
        onRetry: retryGame,
      );
    } else if (result != null) {
      screen = ResultScreen(
        userChoice: userMove!,
        opponentMove: opponentMove!,
        victory: result!,
        onRetry: retryGame,
        onBrowseStats: browseStats,
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
