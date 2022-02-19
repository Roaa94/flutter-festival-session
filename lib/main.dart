import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_festival/domain/service_locator.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/home/pages/home_page.dart';
import 'package:flutter_festival/ui/providers/settings_provider.dart';
import 'package:flutter_festival/ui/styles/app_colors.dart';
import 'package:flutter_festival/ui/styles/app_text_styles.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    setupServiceLocator();
    await SettingsProvider().bootActions();
    runApp(const MyApp());
  }, (e, _) => throw e);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SettingsProvider(),
        ),
      ],
      child: Consumer<SettingsProvider>(
        child: const HomePage(),
        builder: (c, settingsProvider, home) {
          return MaterialApp(
            title: 'Flutter Festival Session',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              Translations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: Locale(settingsProvider.currentLocale),
            supportedLocales: SettingsProvider.appLanguages
                .map((appLanguage) => Locale(appLanguage.locale))
                .toList(),
            theme: ThemeData(
              fontFamily: 'Cairo',
              scaffoldBackgroundColor: Colors.grey.shade300,
              primaryColor: Colors.deepPurple,
              primarySwatch: Colors.deepPurple,
              appBarTheme: const AppBarTheme(
                titleTextStyle: AppTextStyles.appBarTextStyle,
              ),
              canvasColor: AppColors.primary,
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  textStyle: AppTextStyles.button,
                ),
              ),
            ),
            home: home,
          );
        },
      ),
    );
  }
}
