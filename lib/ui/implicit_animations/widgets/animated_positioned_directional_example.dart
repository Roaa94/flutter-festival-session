import 'package:flutter/material.dart';
import 'package:flutter_festival/ui/styles/app_text_styles.dart';

class AnimatedPositionDirectionalExample extends StatefulWidget {
  const AnimatedPositionDirectionalExample({Key? key}) : super(key: key);

  @override
  _AnimatedPositionDirectionalExampleState createState() => _AnimatedPositionDirectionalExampleState();
}

class _AnimatedPositionDirectionalExampleState extends State<AnimatedPositionDirectionalExample> {
  List<String> options = [
    'First Option',
    'Second Option',
    'Third Option',
  ];

  int selectedOptionIndex = 0;

  final Duration animationDuration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    double indicatorWidth = (MediaQuery.of(context).size.width - 17 * 2) / options.length;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
      width: double.infinity,
      height: 100,
      child: Stack(
        children: [
          AnimatedPositionedDirectional(
            start: indicatorWidth * selectedOptionIndex,
            bottom: 0,
            top: 0,
            duration: animationDuration,
            child: Container(
              width: indicatorWidth,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned.fill(
            child: Row(
              children: List.generate(
                options.length,
                (index) => Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedOptionIndex = index),
                    child: AnimatedDefaultTextStyle(
                      style: AppTextStyles.button.copyWith(color: selectedOptionIndex == index ? Colors.white : Colors.black),
                      duration: animationDuration,
                      child: Text(
                        options[index],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
