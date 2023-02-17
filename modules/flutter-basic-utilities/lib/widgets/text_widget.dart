import 'dart:ui';

import 'package:flutter/material.dart';

Text textWidget({
  required String text,
  Color? color,
  double size = 17,
  TextAlign textAlign = TextAlign.start,
  TextOverflow? textOverflow,
  int maxLines = 1,
  FontWeight? fontWeight,
  TextDecoration? textDecoration,
  String? fontFamily,
  FontStyle? fontStyle,
  List<FontVariation>? fontVariations,
  List<String>? fontFamilyFallback,
  List<FontFeature>? fontFeatures
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
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        fontVariations: fontVariations,
        fontFamilyFallback: fontFamilyFallback,
        fontFeatures: fontFeatures,
        decoration: textDecoration,),
  );
}
