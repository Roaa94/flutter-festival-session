import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/home/pages/home_page.dart';
import 'package:flutter_festival/ui/providers/settings_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Festival Session',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        Translations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(SettingsProvider.appLanguages[0].locale),
      supportedLocales: SettingsProvider.appLanguages.map((appLanguage) => Locale(appLanguage.locale)).toList(),
      theme: ThemeData(
        fontFamily: 'Cairo',
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}
