import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/explicit_animations/widgets/align_transition_example.dart';
import 'package:flutter_festival/ui/explicit_animations/widgets/rotation_and_size_transition_example.dart';
import 'package:flutter_festival/ui/styles/app_text_styles.dart';

// Built-in Transition Animation Widgets
// 1. AlignTransition
// 2. DecoratedBoxTransition
// 3. DefaultTextStyleTransition
// 4. FadeTransition
// 5. PositionedTransition
// 6. RelativePositionedTransition
// 7. RotationTransition
// 8. ScaleTransition
// 9. SizeTransition
// 10. SlideTransition
// 11. StatusTransitionWidget
class BuiltInExplicitAnimationsPage extends StatelessWidget {
  const BuiltInExplicitAnimationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Built-In Explicit Animations'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Text(Translations.of(context)!
                  .get('built_in_explicit_animations_description')),
            ),
            const Text(
              'RotationTransition',
              style: AppTextStyles.h1,
            ),
            const Text('&'),
            const Text(
              'SizeTransition',
              style: AppTextStyles.h1,
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.deepPurple.shade100,
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: const RotationAndSizeTransitionExample(),
            ),
            const SizedBox(height: 100),
            const Text(
              'AlignTransition',
              style: AppTextStyles.h1,
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.deepPurple.shade100,
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: const AlignTransitionExample(),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
