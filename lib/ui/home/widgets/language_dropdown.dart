import 'package:flutter/material.dart';
import 'package:flutter_festival/data/models/app_language.dart';
import 'package:flutter_festival/ui/providers/settings_provider.dart';
import 'package:flutter_festival/ui/styles/app_text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (c, settingsProvider, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: DropdownButton<AppLanguage>(
            value: settingsProvider.currentAppLanguage,
            icon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(FontAwesomeIcons.language, color: Colors.white),
            ),
            style: AppTextStyles.button,
            underline: Container(),
            onChanged: (AppLanguage? appLanguage) {
              if (appLanguage != null &&
                  appLanguage.locale != settingsProvider.currentLocale) {
                settingsProvider.setCurrentLocale(appLanguage.locale);
              }
            },
            items: SettingsProvider.appLanguages
                .map<DropdownMenuItem<AppLanguage>>((AppLanguage language) {
              return DropdownMenuItem<AppLanguage>(
                value: language,
                child: Container(
                  child: Text(language.title),
                  color: Colors.deepPurple,
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
