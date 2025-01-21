import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/enums.dart';

class ControlButtonWidget extends StatelessWidget {
  final Move userMove;

  const ControlButtonWidget({super.key, required this.userMove});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: Colors.black, width: 3)),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
        child: Image.asset(
          "assets/images/${userMove.img}",
          width: 150,
        ),
      ),
    );
  }
}
