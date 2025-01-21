import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/enums.dart';
import 'package:rock_paper_scissors/widgets/control_button.dart';
import 'package:rock_paper_scissors/widgets/screen_container.dart';

class MainScreen extends StatelessWidget {

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenContainer(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ControlButtonWidget(userMove: Move.rock),
          ControlButtonWidget(userMove: Move.paper),
          ControlButtonWidget(userMove: Move.scissors)
        ],
      ),
    );
  }
}
