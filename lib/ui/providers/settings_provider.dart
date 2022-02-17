import 'package:flutter/cupertino.dart';
import 'package:flutter_festival/data/models/app_language.dart';

class SettingsProvider with ChangeNotifier {
  static List<AppLanguage> appLanguages = [
    AppLanguage(title: 'العربية', locale: 'ar'),
    AppLanguage(title: 'English', locale: 'en'),
  ];
}
