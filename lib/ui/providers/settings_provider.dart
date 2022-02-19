import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_festival/data/models/app_language.dart';
import 'package:flutter_festival/domain/service_locator.dart';
import 'package:flutter_festival/domain/storage/storage_service.dart';

class SettingsProvider with ChangeNotifier {
  final StorageService _storageService = getIt<StorageService>();

  static List<AppLanguage> appLanguages = [
    AppLanguage(title: 'العربية', locale: 'ar'),
    AppLanguage(title: 'English', locale: 'en'),
  ];

  // (Platform from dart:ui doesn't work on the web)
  String currentLocale = kIsWeb ? 'ar' : Platform.localeName.substring(0, 2);

  AppLanguage get currentAppLanguage =>
      appLanguages.firstWhere((language) => language.locale == currentLocale);

  void _getCurrentLocaleFromStorage() {
    currentLocale =
        _storageService.get(StorageKeys.localeCode) ?? Platform.localeName;
    notifyListeners();
  }

  void setCurrentLocale(String localeCode) {
    currentLocale = localeCode;
    _storageService.set(StorageKeys.localeCode, localeCode);
    notifyListeners();
  }

  Future<void> bootActions() async {
    await _storageService.init();
    _getCurrentLocaleFromStorage();
  }
}
