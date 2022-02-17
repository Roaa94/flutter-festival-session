import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/styles/app_text_styles.dart';

// Using TweenAnimationBuilder widget
class CustomImplicitAnimationsPage extends StatelessWidget {
  const CustomImplicitAnimationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Implicit Animations'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Text(
                Translations.of(context)!.get('custom_implicit_animations_description'),
                style: AppTextStyles.body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
