import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Translations.of(context)!.get('Home')),
      ),
    );
  }
}
