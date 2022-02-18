import 'package:flutter/material.dart';
import 'package:flutter_festival/ui/explicit_animations/widgets/gradient_transition.dart';

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({Key? key}) : super(key: key);

  @override
  _AnimatedWidgetExampleState createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GradientTransition(gradientEnd: _controller),
    );
  }
}
