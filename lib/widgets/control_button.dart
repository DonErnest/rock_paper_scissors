import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/enums.dart';

class ControlButtonWidget extends StatelessWidget {
  final Move userMove;
  final void Function(Move choice) onPressed;

  const ControlButtonWidget({
    super.key,
    required this.userMove,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: ElevatedButton(
        onPressed: () => {
          onPressed(userMove),
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(32, 129, 195, 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: Colors.black, width: 3)),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
        child: Image.asset(
          "assets/images/${userMove.img}",
          width: 100,
        ),
      ),
    );
  }
}
