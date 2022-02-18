import 'package:flutter/material.dart';
import 'package:flutter_festival/i18n/translations.dart';
import 'package:flutter_festival/ui/explicit_animations/pages/built_in_explicit_animations_page.dart';
import 'package:flutter_festival/ui/explicit_animations/pages/custom_explicit_animations_page.dart';
import 'package:flutter_festival/ui/home/widgets/animation_type_container.dart';
import 'package:flutter_festival/ui/implicit_animations/pages/built_in_implicit_animations_page.dart';
import 'package:flutter_festival/ui/implicit_animations/pages/custom_implicit_animations_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Translations.of(context)!.get('Home')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 7),
        child: Column(
          children: [
            Expanded(
              child: AnimationTypeContainer(
                title: 'Implicit Animations',
                subtitle: 'No need for AnimationController',
                onCustomPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => const CustomImplicitAnimationsPage()),
                  );
                },
                onBuiltInPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => BuiltInImplicitAnimationsPage()),
                  );
                },
              ),
            ),
            // const SizedBox(height: 20),
            Expanded(
              child: AnimationTypeContainer(
                title: 'Explicit Animations',
                subtitle: 'Uses an AnimationController',
                onCustomPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => const CustomExplicitAnimationsPage()),
                  );
                },
                onBuiltInPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => const BuiltInExplicitAnimationsPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
