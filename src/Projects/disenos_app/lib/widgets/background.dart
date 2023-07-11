import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
      colors: [
        Color(0xff2e305f),
        Color(0xff202333),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple Gradient
        Container(decoration: boxDecoration),

        // Pink Box
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox(),
        ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  _PinkBox();

  final boxDecoration = BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Color.fromRGBO(236, 98, 188, 1),
        Color.fromRGBO(251, 142, 172, 0.7),
      ],
    ),
    borderRadius: BorderRadius.circular(80),
  );

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: boxDecoration,
      ),
    );
  }
}
