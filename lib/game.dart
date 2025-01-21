import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/widgets/screen_container.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({super.key});

  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ScreenContainer(widget: Placeholder()),
      ),
    );
  }
}
