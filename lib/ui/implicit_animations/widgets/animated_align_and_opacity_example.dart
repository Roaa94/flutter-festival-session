import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/styles/app_text_styles.dart';

class AnimatedAlignAndOpacityExample extends StatefulWidget {
  const AnimatedAlignAndOpacityExample({Key? key}) : super(key: key);

  @override
  _AnimatedAlignAndOpacityExampleState createState() => _AnimatedAlignAndOpacityExampleState();
}

class _AnimatedAlignAndOpacityExampleState extends State<AnimatedAlignAndOpacityExample> {
  final Duration animationDuration = const Duration(milliseconds: 300);
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => expanded = !expanded),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 17),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(color: Colors.deepPurple.shade300, borderRadius: BorderRadius.circular(15)),
                child: AnimatedAlign(
                  alignment: expanded ? const AlignmentDirectional(-0.9, -1.25) : Alignment.center,
                  duration: animationDuration,
                  child: Text(
                    Translations.of(context)!.get(expanded ? 'More Text' : 'Tap to Read More...'),
                    style: AppTextStyles.h1,
                  ),
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: expanded ? 1 : 0,
              duration: animationDuration,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  Translations.of(context)!.get('dummy_text'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
