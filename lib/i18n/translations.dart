import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_festival/ui/providers/settings_provider.dart';

class Translations {
  final Locale locale;

  Translations(this.locale);

  // Helper method to keep the code in the widgets concise
  // Localizations are accessed using an InheritedWidget "of" syntax
  static Translations? of(BuildContext context) {
    return Localizations.of<Translations>(context, Translations);
  }

  // Static member to have a simple access to the delegate from the MaterialApp
  static const LocalizationsDelegate<Translations> delegate =
      _AppLocalizationsDelegate();

  late Map<String, String> _localizedStrings;

  Future<bool> load() async {
    // Load the language JSON file from the "lang" folder
    String jsonString =
        await rootBundle.loadString('i18n/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  String? _translatedKey;

  // This method will be called from every widget which needs a localized text
  // Added for loop to translate arguments as variables in .json files.
  String get(String? key, {List<dynamic>? args}) {
    if (null == _localizedStrings[key!]) return '${locale.languageCode}[$key]';
    _translatedKey = _localizedStrings[key];
    if (null == args || args.isEmpty) {
      return _translatedKey ?? '';
    } else {
      for (int i = 0; i < args.length; ++i) {
        _translatedKey = _translatedKey!.replaceAll('{$i}', args[i]);
      }
      return _translatedKey ?? '';
    }
  }
}

// LocalizationsDelegate is a factory for a set of localized resources
// In this case, the localized strings will be gotten in an AppLocalizations object
class _AppLocalizationsDelegate extends LocalizationsDelegate<Translations> {
  // This delegate instance will never change (it doesn't even have fields!)
  // It can provide a constant constructor.
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Include all of your supported language codes here
    return SettingsProvider.appLanguages
        .map((language) => language.locale)
        .toList()
        .contains(locale.languageCode);
  }

  @override
  Future<Translations> load(Locale locale) async {
    // AppLocalizations class is where the JSON loading actually runs
    Translations localizations = Translations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
