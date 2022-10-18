import 'dart:math';

import 'package:flutter/material.dart';

Widget vignetteWidget() {
  return Container(
    height: 4,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment(0.4, 0.5),
        end: Alignment(0.3, 0.6),
        stops: [
          0.2,
          0.4,
          0.8,
          0.9,
        ],
        colors: [
          Colors.red,
          Colors.white,
          Color.fromRGBO(111, 166, 214, 1),
          Colors.white,
        ],
        tileMode: TileMode.repeated,
        transform: GradientRotation(pi / 1.5),
      ),
    ),
  );
}
