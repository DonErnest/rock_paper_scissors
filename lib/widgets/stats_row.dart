import 'package:flutter/material.dart';

class StatsRowWidget extends StatelessWidget {
  final String text;
  final int counter;
  const StatsRowWidget({super.key, required this.text, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.start,
        ),
        Spacer(),
        Text(
          "${counter} times",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.end,
        )
      ],
    );
  }
}
