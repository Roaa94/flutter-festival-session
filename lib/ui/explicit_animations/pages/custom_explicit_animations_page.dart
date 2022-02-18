import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/explicit_animations/widgets/animated_widget_example.dart';
import 'package:flutter_festival/ui/styles/app_text_styles.dart';

class CustomExplicitAnimationsPage extends StatelessWidget {
  const CustomExplicitAnimationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Explicit Animations'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Text(Translations.of(context)!
                  .get('custom_explicit_animations_description')),
            ),
            Text(
              'AnimatedWidget',
              style: AppTextStyles.h1,
            ),
            const SizedBox(height: 10),
            AnimatedWidgetExample(),
          ],
        ),
      ),
    );
  }
}
