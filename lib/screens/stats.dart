import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/widgets/navigation_button.dart';
import 'package:rock_paper_scissors/widgets/screen_container.dart';
import 'package:rock_paper_scissors/widgets/stats_row.dart';

class StatsScreen extends StatelessWidget {
  final int userVictoryCounter;
  final int opponentVictoryCounter;
  final int drawnCounter;

  final void Function() onRetry;

  const StatsScreen({
    super.key,
    required this.userVictoryCounter,
    required this.opponentVictoryCounter,
    required this.drawnCounter,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          StatsRowWidget(
            text: "User has won",
            counter: userVictoryCounter,
          ),
          StatsRowWidget(
            text: "Opponent has won",
            counter: opponentVictoryCounter,
          ),
          const Divider(color: Colors.black),
          Text(
            "For ${drawnCounter} times user and opponent has been a disgrace to conscious world",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          NavigationButtonWidget(onPressed: onRetry, label: "Retry")
        ],
      ),
    );
  }
}
