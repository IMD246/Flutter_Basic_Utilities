import 'package:flutter/material.dart';

Widget imageAssetWidget({
  required String? urlImage,
  required String? packageName,
  Color? color,
  BoxFit? fit,
  int? width,
  int? height,
}) {
  return Image.asset(
    package: packageName,
    urlImage!,
    color: color,
    fit: fit,
    cacheWidth: width,
    cacheHeight: height,
  );
}
