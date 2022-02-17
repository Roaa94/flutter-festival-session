import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/implicit_animations/widgets/animated_align_and_opacity_example.dart';
import 'package:flutter_festival/ui/implicit_animations/widgets/animated_container_example.dart';
import 'package:flutter_festival/ui/implicit_animations/widgets/animated_default_text_style_example.dart';
import 'package:flutter_festival/ui/implicit_animations/widgets/animated_padding_example.dart';
import 'package:flutter_festival/ui/implicit_animations/widgets/animated_physical_model_example.dart';
import 'package:flutter_festival/ui/implicit_animations/widgets/animated_positioned_directional_example.dart';
import 'package:flutter_festival/ui/implicit_animations/widgets/animated_positioned_example.dart';
import 'package:flutter_festival/ui/implicit_animations/widgets/animated_size_example.dart';
import 'package:flutter_festival/ui/styles/app_text_styles.dart';

// Built-in Implicit Animations Widgets
// 1. AnimatedAlign
// 2. AnimatedContainer
// 3. AnimatedDefaultTextStyle
// 4. AnimatedOpacity
// 5. AnimatedPadding
// 6. AnimatedPhysicalModel
// 7. AnimatedPositioned
// 8. AnimatedPositionDirectional
// 9. AnimatedSize
class BuiltInImplicitAnimationsPage extends StatelessWidget {
  BuiltInImplicitAnimationsPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> builtInImplicitAnimationWidgets = [
    {
      'title': 'AnimatedContainer',
      'widget': const AnimatedContainerExample(),
    },
    {
      'title': 'AnimatedDefaultTextStyle',
      'widget': const AnimatedDefaultTextStyleExample(),
    },
    {
      'title': 'AnimatedPadding',
      'widget': const AnimatedPaddingExample(),
    },
    {
      'title': 'AnimatedPhysicalModel',
      'widget': const AnimatedPhysicalModelExample(),
    },
    {
      'title': 'AnimatedPositioned',
      'widget': const AnimatedPositionedExample(),
    },
    {
      'title': 'AnimatedPositionDirectional',
      'widget': const AnimatedPositionDirectionalExample(),
    },
    {
      'title': 'AnimatedSize',
      'widget': const AnimatedSizeExample(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Built-In Implicit Animations'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Text(
                Translations.of(context)!.get('built_in_implicit_animations_description'),
                style: AppTextStyles.body,
              ),
            ),
            Column(
              children: [
                const Text(
                  'AnimatedAlign',
                  style: AppTextStyles.h1,
                ),
                const Text('&'),
                const Text(
                  'AnimatedOpacity',
                  style: AppTextStyles.h1,
                ),
                const SizedBox(height: 10),
                Container(
                  child: const AnimatedAlignAndOpacityExample(),
                  color: Colors.deepPurple.shade100,
                ),
                const SizedBox(height: 20),
              ],
            ),
            ...List.generate(
              builtInImplicitAnimationWidgets.length,
              (index) => Column(
                children: [
                  Text(
                    builtInImplicitAnimationWidgets[index]['title'],
                    style: AppTextStyles.h1,
                  ),
                  Container(
                    child: builtInImplicitAnimationWidgets[index]['widget'],
                    color: Colors.deepPurple.shade100,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
