import 'package:flutter/material.dart';

class GradientTransition extends AnimatedWidget {
  final Animation<double> gradientEnd;

  const GradientTransition({
    Key? key,
    required this.gradientEnd,
  }) : super(key: key, listenable: gradientEnd);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.redAccent.shade400],
          stops: [0, gradientEnd.value],
        ),
      ),
    );
  }
}
