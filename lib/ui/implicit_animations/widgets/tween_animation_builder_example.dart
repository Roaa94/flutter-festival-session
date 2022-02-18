/// Example taken from the official Flutter video on TweenAnimationBuilder
/// https://www.youtube.com/watch?v=6KiPEqzJIKQ&list=PLjxrf2q8roU2v6UqYlt_KPaXlnjbYySua&index=3
import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatefulWidget {
  const TweenAnimationBuilderExample({Key? key}) : super(key: key);

  @override
  _TweenAnimationBuilderExampleState createState() =>
      _TweenAnimationBuilderExampleState();
}

class _TweenAnimationBuilderExampleState
    extends State<TweenAnimationBuilderExample> {
  double _sliderValue = 0;
  Color? _newColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Slider.adaptive(
            value: _sliderValue,
            onChanged: (value) => setState(() {
              _sliderValue = value;
              _newColor = Color.lerp(Colors.white, Colors.blue, _sliderValue);
            }),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.black,
          child: TweenAnimationBuilder(
            tween: ColorTween(begin: Colors.white, end: _newColor),
            duration: const Duration(milliseconds: 200),
            child: Image.asset('assets/images/fire.png'),
            builder: (BuildContext context, Color? color, Widget? child) {
              return ColorFiltered(
                colorFilter: ColorFilter.mode(
                    color ?? Colors.transparent, BlendMode.modulate),
                child: child,
              );
            },
          ),
        ),
      ],
    );
  }
}
