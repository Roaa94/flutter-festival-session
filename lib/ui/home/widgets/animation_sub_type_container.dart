import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/styles/app_colors.dart';

class AnimationSubTypeContainer extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const AnimationSubTypeContainer({
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 15),
          ],
          gradient: const LinearGradient(
            colors: [Colors.white, AppColors.primaryAccent],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          ),
        ),
        child: Text(
          Translations.of(context)!.get(title),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.deepPurple.shade900,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
