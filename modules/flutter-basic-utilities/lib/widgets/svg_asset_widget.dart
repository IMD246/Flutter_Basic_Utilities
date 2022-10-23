import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGAssetWidget extends StatelessWidget {
  const SVGAssetWidget(
      {super.key, required this.urlImage, this.packageName = "", this.width, this.height, required this.fit,});
  final String urlImage;
  final String? packageName;
  final double? width;
  final double? height;
  final BoxFit fit;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      urlImage,
      package: packageName,
      fit: fit,
      width: width,
      height: height,
    );
  }
}
