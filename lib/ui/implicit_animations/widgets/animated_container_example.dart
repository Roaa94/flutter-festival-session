import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool animationToggle = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
      width: double.infinity,
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => setState(() => animationToggle = !animationToggle),
            child: Text(Translations.of(context)!.get('Change The Container')),
          ),
          const SizedBox(height: 20),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: animationToggle ? 150 : 100,
            height: animationToggle ? 150 : 100,
            decoration: BoxDecoration(
              color: animationToggle
                  ? Colors.redAccent.shade400
                  : Colors.deepPurple,
              borderRadius: BorderRadius.circular(animationToggle ? 20 : 75),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(animationToggle ? 0.2 : 0.5),
                  blurRadius: animationToggle ? 15 : 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
