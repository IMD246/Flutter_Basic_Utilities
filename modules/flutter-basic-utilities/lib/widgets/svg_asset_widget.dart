import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGAssetWidget extends StatelessWidget {
  const SVGAssetWidget(
      {super.key, required this.urlImage, this.packageName, this.width, this.height, this.fit, this.color,});
  final String urlImage;
  final String? packageName;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      urlImage,
      package: packageName,
      fit: fit ?? BoxFit.contain,
      width: width,
      color: color ?? Colors.white,
      height: height,
    );
  }
}
