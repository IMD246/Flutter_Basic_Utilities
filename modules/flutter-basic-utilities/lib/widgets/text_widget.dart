import 'package:flutter/material.dart';

Text textWidget({
  required String text,
  Color color = Colors.black,
  double size = 17,
  TextAlign textAlign = TextAlign.start,
  TextOverflow? textOverflow,
  int maxLines = 1,
  FontWeight? fontWeight,
  TextDecoration? textDecoration,
}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: maxLines,
    style: TextStyle(
        fontSize: size,
        color: color,
        overflow: textOverflow,
        fontWeight: fontWeight,
        decoration: textDecoration,),
  );
}
