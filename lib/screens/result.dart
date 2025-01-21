import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/enums.dart';
import 'package:rock_paper_scissors/widgets/screen_container.dart';

class ResultScreen extends StatelessWidget {
  final Result victory;

  const ResultScreen({super.key, required this.victory});

  @override
  Widget build(BuildContext context) {
    String message;

    if (victory == Result.drawn) {
      message = "You are both losers";
    } else if (victory == Result.userVictory) {
      message = "You are victorious!";
    } else {
      message = "You are a loser!";
    }

    return ScreenContainer(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Make America Great Again! " + message,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
