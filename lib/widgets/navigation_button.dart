import 'package:flutter/material.dart';

class NavigationButtonWidget extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  const NavigationButtonWidget({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(32, 129, 195, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.black, width: 3),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
