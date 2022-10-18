import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget circleImageWidget({
  required String urlImage,
  Color backGroundColor = Colors.cyan,
  double radius = 45,
}) {
  return CircleAvatar(
    backgroundColor: backGroundColor.withOpacity(0.05),
    radius: radius,
    child: ClipOval(
      child: SizedBox.fromSize(
        size: Size.fromRadius(radius),
        child: CachedNetworkImage(
          imageUrl: urlImage,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    ),
  );
}
