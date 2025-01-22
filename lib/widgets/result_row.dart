import 'package:flutter/material.dart';

class ResultRow extends StatelessWidget {
  final MainAxisAlignment position;
  final String text;
  final String img;

  const ResultRow(
      {super.key,
      required this.position,
      required this.text,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: position,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        Image.asset(
          "assets/images/$img",
          width: 100,
        ),
      ],
    );
  }
}
