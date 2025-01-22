import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  final Widget widget;

  const ScreenContainer({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(247, 249, 249, 1),
        ),
        child: Center(
          child: widget,
        ),
      ),
    );
  }
}