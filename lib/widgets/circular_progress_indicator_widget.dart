import 'package:flutter/material.dart';

Widget circularProgressIndicatorWidget(
    {required Size size, Color color = Colors.red}) {
  return Center(
    child: CircularProgressIndicator(
      color: color,
    ),
  );
}
