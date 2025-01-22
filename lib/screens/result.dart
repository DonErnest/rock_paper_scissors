import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/enums.dart';
import 'package:rock_paper_scissors/widgets/navigation_button.dart';
import 'package:rock_paper_scissors/widgets/result_row.dart';
import 'package:rock_paper_scissors/widgets/screen_container.dart';

class ResultScreen extends StatelessWidget {
  final Move userChoice;
  final Move opponentMove;
  final Result victory;
  final void Function() onRetry;
  final void Function() onBrowseStats;

  const ResultScreen({
    super.key,
    required this.victory,
    required this.onRetry,
    required this.userChoice,
    required this.opponentMove,
    required this.onBrowseStats,
  });

  @override
  Widget build(BuildContext context) {
    String message;

    if (victory == Result.drawn) {
      message = "You are both losers\n(when nobody wins, everybody loses)";
    } else if (victory == Result.userVictory) {
      message = "You are victorious!";
    } else {
      message = "You are a loser!";
    }

    return ScreenContainer(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          ResultRow(
            position: MainAxisAlignment.start,
            text: "Your choice:",
            img: userChoice.img,
          ),
          ResultRow(
            text: "Opponent's choice:",
            position: MainAxisAlignment.end,
            img: opponentMove.img,
          ),
          const Spacer(),
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          const Spacer(),
          NavigationButtonWidget(
            label: "Retry",
            onPressed: onRetry,
          ),
          NavigationButtonWidget(
            label: "Stats",
            onPressed: onBrowseStats,
          ),
        ],
      ),
    );
  }
}
