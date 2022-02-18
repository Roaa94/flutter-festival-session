import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/home/widgets/animation_sub_type_container.dart';
import 'package:flutter_festival/ui/styles/app_colors.dart';
import 'package:flutter_festival/ui/styles/app_text_styles.dart';

class AnimationTypeContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onBuiltInPressed;
  final VoidCallback onCustomPressed;

  const AnimationTypeContainer({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onBuiltInPressed,
    required this.onCustomPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [AppColors.primary, AppColors.primaryAccent]),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 10),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 20),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  Translations.of(context)!.get(subtitle),
                  style: AppTextStyles.button,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: AnimationSubTypeContainer(
                      title: 'Built-in',
                      onPressed: onBuiltInPressed,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: AnimationSubTypeContainer(
                      title: 'Custom',
                      onPressed: onCustomPressed,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
