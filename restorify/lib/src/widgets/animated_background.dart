import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum _ColorTween {
  color1,
  color2,
  color3,
  color4,
  color5,
}

class AnimatedBackground extends StatelessWidget {
  List<Color> ColorList;
  AnimatedBackground({required this.ColorList});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<_ColorTween>()
      ..add(
        _ColorTween.color1,
        ColorList[0].tweenTo(ColorList[1]),
        3.seconds,
      )
      ..add(
        _ColorTween.color2,
        ColorList[2].tweenTo(ColorList[3]),
        3.seconds,
      )
      ..add(
        _ColorTween.color3,
        ColorList[4].tweenTo(ColorList[5]),
        7.seconds,
      )
      ..add(
        _ColorTween.color4,
        ColorList[6].tweenTo(ColorList[7]),
        3.seconds,
      )
      ..add(
        _ColorTween.color5,
        ColorList[8].tweenTo(ColorList[9]),
        3.seconds,
      );

    return MirrorAnimation<MultiTweenValues<_ColorTween>>(
      tween: tween,
      duration: tween.duration,
      builder: (context, child, value) {
        return Container(
          decoration: BoxDecoration(
            gradient: SweepGradient(
              // begin: Alignment.topLeft,
              // end: Alignment.bottomRight,
              colors: [
                value.get<Color>(_ColorTween.color1),
                value.get<Color>(_ColorTween.color2),
                value.get<Color>(_ColorTween.color3),
                value.get<Color>(_ColorTween.color4),
                value.get<Color>(_ColorTween.color5),
              ],
            ),
          ),
        );
      },
    );
  }
}
