import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/styles/app_text_styles.dart';

class RotationAndSizeTransitionExample extends StatefulWidget {
  const RotationAndSizeTransitionExample({Key? key}) : super(key: key);

  @override
  _RotationAndSizeTransitionExampleState createState() =>
      _RotationAndSizeTransitionExampleState();
}

class _RotationAndSizeTransitionExampleState
    extends State<RotationAndSizeTransitionExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    // Controller can be used directly without using Animation class to create
    // custom animation when the animated value is a double and you need to animate
    // exclusively between 0 => 1
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              if (_controller.isCompleted) {
                _controller.reverse();
              } else {
                _controller.forward();
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              width: double.infinity,
              color: Colors.deepPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      Translations.of(context)!.get('Show Image'),
                      style: AppTextStyles.button,
                    ),
                  ),
                  RotationTransition(
                    alignment: Alignment.center,
                    turns: _controller,
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizeTransition(
            sizeFactor: _controller,
            child: Image.asset(
              'assets/images/nature.jpeg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
