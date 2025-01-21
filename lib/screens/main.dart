import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/enums.dart';
import 'package:rock_paper_scissors/widgets/control_button.dart';
import 'package:rock_paper_scissors/widgets/screen_container.dart';

class MainScreen extends StatelessWidget {
  final void Function(Move move) onUserChoice;

  const MainScreen({super.key, required this.onUserChoice});

  @override
  Widget build(BuildContext context) {
    List<ControlButtonWidget> buttons = [];
    for (var move in Move.values) {
      buttons.add(
          ControlButtonWidget(
            userMove: move,
            onPressed: onUserChoice,
          )
      );
    }

    return ScreenContainer(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...buttons
        ],
      ),
    );
  }
}
