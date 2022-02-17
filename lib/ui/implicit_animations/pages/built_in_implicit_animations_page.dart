import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
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
  const BuiltInImplicitAnimationsPage({Key? key}) : super(key: key);

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
          ],
        ),
      ),
    );
  }
}
